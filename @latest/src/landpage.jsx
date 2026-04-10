import { useNavigate } from "react-router-dom";
import "./landpage.css";

function LandPage() {
  const navigate = useNavigate();
    return (
    <div className="landpage-container">
      <h1 className="landpage-title">ALPHA HALAL FUNDS</h1>
      <p className="landpage-description">
        Discover amazing content and connect with others.
      </p>
      <button onClick={() => navigate("/auth")} className="land-button">
        GET STARTED
      </button>
    </div>
    );
}

export default LandPage;
