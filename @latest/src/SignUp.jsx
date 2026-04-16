import React, { useState } from "react";
import { useNavigate } from "react-router-dom";
import Confetti from "react-confetti";
import "./signup.css";

function SignUp({setisLogin}) {
  const [showCelebration, setShowCelebration] = useState(false);
  const navigate = useNavigate();


  const [formData, setFormData] = useState({
    firstName: "",
    lastName: "",
    email: "",
    password: "",
    confirmPassword: "",
  });

  const [errors, setErrors] = useState({});

  const handleChange = (e) => {
    setFormData({ ...formData, [e.target.name]: e.target.value });
  };

  const handleSubmit = (e) => {
    e.preventDefault();
    let newErrors = {};

    if (/\d/.test(formData.firstName)) {
      newErrors.firstName = "Names cannot contain numbers.";
    }

    if (/\d/.test(formData.lastName)) {
      newErrors.lastName = "Names cannot contain numbers.";
    }

    if (!/\S+@\S+\.\S+/.test(formData.email)) {
      newErrors.email = "Please enter a valid email.";
    }

    if (formData.password !== formData.confirmPassword) {
      newErrors.confirmPassword = "Passwords do not match!";
    }

    setErrors(newErrors);

    if (Object.keys(newErrors).length === 0) {
      localStorage.setItem("userEmail", formData.email.trim());
      localStorage.setItem("userPassword", formData.password);
      localStorage.setItem("firstName", formData.firstName);
      setShowCelebration(true);

      setTimeout(() => {
        navigate("/login");
      }, 1500);
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
      <div className="container2">
        <div className="card2">
        <form className="formContent2" onSubmit={handleSubmit}>
        <h2 className="title2">Sign Up!</h2>
        <p className="subtitle2">Please write your credentials</p>

        <div className="row">
          <input
            name="firstName"
            type="text"
            placeholder="First Name"
            onChange={handleChange}
            className="input2"
            required
          />
          {errors.firstName && (
            <p style={{ color: "red", fontSize: "12px" }}>{errors.firstName}</p>
          )}

          <input
            name="lastName"
            type="text"
            placeholder="Last Name"
            onChange={handleChange}
            className="input2"
            required
          />
          {errors.lastName && (
            <p style={{ color: "red", fontSize: "12px" }}>{errors.lastName}</p>
          )}
        </div>

        <input
          name="email"
          type="email"
          placeholder="name@gmail.com"
          onChange={handleChange}
          className="input2"
          required
        />
        {errors.email && (
          <span style={{ color: "red", fontSize: "12px" }}>{errors.email}</span>
        )}

        <input
          name="password"
          type="password"
          placeholder="Password"
          onChange={handleChange}
          className="input2"
          required
        />

        <input
          name="confirmPassword"
          type="password"
          placeholder="Confirm Password"
          onChange={handleChange}
          className="input2"
          required
        />
        {errors.confirmPassword && (
          <span style={{ color: "red", fontSize: "12px" }}>
            {errors.confirmPassword}
          </span>
        )}

        <button className="primaryBtn2" type="submit">
          Sign up
        </button>

        <p className="switchText2">
          Already have an account?{" "}
          <span onClick={() => navigate("/login")} style={{ cursor: "pointer" }}>
            Log in
          </span>
        </p>
      </form>
        </div>
      
      </div>
    </>
  );
}

export default SignUp;
