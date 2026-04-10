import React, { useState } from "react";
import { useNavigate } from "react-router-dom";
import Confetti from "react-confetti";
import "./auth2.css";

function Auth2() {
  const [isLogin, setIsLogin] = useState(true);
  const [showCelebration, setShowCelebration] = useState(false);
  const navigate = useNavigate();

  const handleAuth2 = (e) => {
    e.preventDefault();

    if (!isLogin) {
      setShowCelebration(true);

      setTimeout(() => {
        navigate("/dashboard");
      }, 3000);
    } else {
      navigate("/dashboard");
    }
  };

  return (
    <>
      {showCelebration && (
        <div className="celebration">
          <Confetti />
          <div className="celebration-box">
            <h1>🎉 Welcome!</h1>
            <p>Let’s start the journey with you 🚀</p>
          </div>
        </div>
      )}
      <div className="container">
        <div className="card">
          {isLogin ? (
            <form className="formContent" onSubmit={handleAuth2}>
              <h2 className="title">Welcome!</h2>
              <p className="subtitle">Please log in to your account</p>
              <div className="inputGroup">
                <input
                  type="text"
                  placeholder="Username"
                  className="input"
                  required
                />
                <input
                  type="password"
                  placeholder="Password"
                  className="input"
                  required
                />
              </div>

              <div className="options">
                <label className="rememberMe">
                  <input type="checkbox" /> <p>Remember me </p>
                </label>
                <a href="#" className="forgotLink">
                  Forgot Password?
                </a>
              </div>

              <button className="primaryBtn" type="submit">
                Log in
              </button>

              <p className="switchText">
                Don't have an account?{" "}
                <span
                  onClick={() => setIsLogin(false)}
                  style={{ cursor: "pointer" }}
                >
                  Sign up
                </span>
              </p>
            </form>
          ) : (
            <form className="formContent" onSubmit={handleAuth2}>
              <h2 className="title">Sign Up!</h2>
              <p className="subtitle">Please write your credentials</p>
              <div className="row">
                <input type="text" placeholder="First Name" className="input" />
                <input type="text" placeholder="Last Name" className="input" />
              </div>
              <input type="email" placeholder="Email" className="input" />
              <input type="password" placeholder="Password" className="input" />
              <input
                type="password"
                placeholder="Confirm Password"
                className="input"
              />

              <button className="primaryBtn" type="submit">
                Sign up
              </button>

              <p className="switchText">
                Already have an account?{" "}
                <span
                  onClick={() => setIsLogin(true)}
                  style={{ cursor: "pointer" }}
                >
                  Sign in
                </span>
              </p>
            </form>
          )}
        </div>
      </div>
    </>
  );
}

export default Auth2;
