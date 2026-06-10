import React, { useState } from "react";
import { useNavigate } from "react-router-dom";
import Confetti from "react-confetti";
import "./signup.css";

function SignUp({ setisLogin }) {
  const [showCelebration, setShowCelebration] = useState(false);
  const navigate = useNavigate();

  // 1. Added phone state to the top level
  const [countryCode, setCountryCode] = useState("+255");
  const [phoneNumber, setPhoneNumber] = useState("");

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

    // Validation logic...
    if (/\d/.test(formData.firstName))
      newErrors.firstName = "Names cannot contain numbers.";
    if (/\d/.test(formData.lastName))
      newErrors.lastName = "Names cannot contain numbers.";
    if (!/\S+@\S+\.\S+/.test(formData.email))
      newErrors.email = "Please enter a valid email.";
    if (formData.password !== formData.confirmPassword)
      newErrors.confirmPassword = "Passwords do not match!";

    // Validate phone length (optional)
    if (phoneNumber.length < 7) {
      newErrors.phone = "Please enter a valid phone number.";
    }

    setErrors(newErrors);

    if (Object.keys(newErrors).length === 0) {
      // 2. You can now save the full number
      const fullNumber = `${countryCode}${phoneNumber}`;
      localStorage.setItem("userPhone", fullNumber);

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
                <p style={{ color: "red", fontSize: "12px" }}>
                  {errors.firstName}
                </p>
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
                <p style={{ color: "red", fontSize: "12px" }}>
                  {errors.lastName}
                </p>
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
              <span style={{ color: "red", fontSize: "12px" }}>
                {errors.email}
              </span>
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

         
            <div className="input-field-wrapper">
              <label className="field-label">Phone Number</label>
              <div className="phone-input-group">
                <div className="country-block">
                  <select
                    value={countryCode}
                    onChange={(e) => setCountryCode(e.target.value)}
                  >
                    <option value="+255">🇹🇿 +255</option>
                    <option value="+1">🇺🇸 +1</option>
                    <option value="+44">🇬🇧 +44</option>
                    <option value="+91">🇮🇳 +91</option>
                  </select>
                </div>
                <input
                  type="tel"
                  placeholder="712345678"
                  value={phoneNumber}
                  onChange={(e) =>
                    setPhoneNumber(e.target.value.replace(/\D/g, ""))
                  }
                  className="number-block"
                  required
                />
              </div>
              {errors.phone && (
                <p style={{ color: "red", fontSize: "12px" }}>{errors.phone}</p>
              )}
            </div>
          

            <button className="primaryBtn2" type="submit">
              Sign up
            </button>

            <p className="switchText2">
              Already have an account?{" "}
              <span
                onClick={() => navigate("/login")}
                style={{ cursor: "pointer" }}
              >
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
