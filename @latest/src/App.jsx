import Auth2 from "./auth2.jsx";
import { Routes, Route, Navigate } from "react-router-dom";
import Dashboard from "./dashboard.jsx";
import LandPage from "./landpage.jsx";

function App() {

  const isLoggedIn = false; // Change this to true to simulate a logged-in user
  return (
   
      <Routes>
        <Route path="/" element={<LandPage />} />
        <Route path="/auth" element={<Auth2 />} />
        <Route
          path="/dashboard"
          element={isLoggedIn ? <Dashboard /> : <Navigate to="/auth" />}
        />
      </Routes>
  );
}

export default App;
