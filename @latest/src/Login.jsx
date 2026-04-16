import React, { useState } from "react";
import { useNavigate } from "react-router-dom";
import "./login.css";

function Login() {
  const navigate = useNavigate();

  const [formData, setFormData] = useState({
    email: "",
    password: "",
  });

  const [error, setError] = useState("");

  const handleChange = (e) => {
    setFormData({ ...formData, [e.target.name]: e.target.value });
  };

  const handleSubmit = (e) => {
    e.preventDefault();

    const savedEmail = localStorage.getItem("userEmail");
    const savedPassword = localStorage.getItem("userPassword");

    if (!savedEmail || !savedPassword) {
      setError("No account found. Please sign up first.");
      return;
    }

    if (formData.email !== savedEmail || formData.password !== savedPassword) {
      setError("Incorrect email or password ❌");
    } else {
      navigate("/dashboard");
    }
  };

  return (
    <>
      <div className="container">
        <div className="card">
          <form className="formContent" onSubmit={handleSubmit}>
            <h2 className="title">Welcome!</h2>
            <p className="subtitle">Please log into your account</p>

            <input
              name="email"
              type="email"
              placeholder="Email"
              onChange={handleChange}
              className="input"
              required
            />

            <input
              name="password"
              type="password"
              placeholder="Password"
              onChange={handleChange}
              className="input"
              required
            />

            {error && <p style={{ color: "red" }}>{error}</p>}

            <div className="options">
              <label className="rememberMe">
                <input type="checkbox" /> Remember me
              </label>
              <a href="#" className="forgotLink">
                Forgot password?
              </a>
            </div>

            <button className="primaryBtn" type="submit">
              Login
            </button>

            <p className="switchText">
              Don't have an account?{" "}
              <span onClick={() => navigate("/signup")}>Sign up</span>
            </p>
          </form>
        </div>
      </div>
    </>
  );
}

export default Login;
