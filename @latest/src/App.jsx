import Login from "./auth/Login.jsx";
import SignUp from "./auth/SignUp.jsx";
import { Routes, Route, Navigate } from "react-router-dom";
import Dashboard from "./dashboard/dashboard.jsx";
import LandPage from "./land/landpage.jsx";

function App() {
  const isLoggedIn = localStorage.getItem("userEmail") !== null;
  return (
    <Routes>
      <Route path="/" element={<LandPage />} />
      <Route path="/login" element={<Login />} />
      <Route path="/signup" element={<SignUp />} />
      <Route
        path="/dashboard"
        element={isLoggedIn ? <Dashboard /> : <Navigate to="/login" />}
      />
    </Routes>
  );
}

export default App;
