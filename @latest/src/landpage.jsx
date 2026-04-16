import { useNavigate } from "react-router-dom";
import "./landpage.css";

function LandPage() {
  const navigate = useNavigate();
  return (
    <>
      <nav className="navbar">
        <div className="container-fluid">
          <span className="navbar-brand">
            <h1 className="landpage-title">
              ALPHA HALAL <br />
              FUNDS
            </h1>
          </span>

          <button onClick={() => navigate("/login")} className="land-button">
            Get Started
          </button>
        </div>
      </nav>

      <div className="landpage-container">
        <div className="hero-section">
          <div className="text-group">
            <p className="landpage-subtitle">
              Trade. <br />
              Grow. <br />
              Thrive.
            </p>
            <h3 className="landpage-description">
              Step into a smarter way of handling value.
              <br />
              Alpha Halal Funds gives you a simple and reliable way <br /> to
              grow value and help you move forward.
              <br />
              We help you build and manage value with ease.
            </h3>
            <button className="contact">Contact Us </button>
          </div>
          <div className="image-card">
            <img src="/src/assets/pic2.jpg " alt="preview" />
          </div>
        </div>
        
      </div>
    </>
  );
}

export default LandPage;
