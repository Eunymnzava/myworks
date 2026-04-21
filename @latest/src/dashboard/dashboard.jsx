import GraphCard from "./graphcard.jsx";
import "./dashboard.css";

function Dashboard() {
  const firstName = localStorage.getItem("firstName") || "User";
  const transactions = [
    { name: "Amazon", date: "2024-06-01", amount: -50 },
    { name: "Salary", date: "2024-05-30", amount: 3000 },
    { name: "Netflix", date: "2024-05-28", amount: -15 },
  ];

  return (
    <>
      <nav className="navbar2">
        <div className="container-fluid">
          <div className="navbar-brand2">
            <div className="group">
              <i className="bi bi-person-circle"></i>
              <p className="profile-head">
                Welcome back
                <br />
                {firstName.toUpperCase()}😄🎉!!
              </p>
            </div>

            <div className="icon-group">
              <i className="bi bi-moon-fill"></i>
              <i className="bi bi-bell"></i>
            </div>
          </div>
        </div>
      </nav>
      <div className="main-content">
        <div className="top-dash">
          <div className="dashboard-card">
            <h3 className="balance">Current Balance</h3>
            <p>$12,345</p>
          </div>
          <GraphCard />
        </div>
        <div className="transaction">
          <h3>Recent Transactions</h3>
          <ul className="transaction-list">
            {transactions.map((tx, index) => (
              <li className="transaction-item" key={index}>
                <div className="transaction-info">
                  <p className="transaction-name">{tx.name}</p>
                  <p className="transaction-date">{tx.date}</p>
                </div>

                <p
                  className={`transaction-amount ${
                    tx.amount < 0 ? "expense" : "income"
                  }`}
                >
                  {tx.amount < 0 ? "-" : "+"}${Math.abs(tx.amount)}
                </p>
              </li>
            ))}
          </ul>
        </div>
      </div>
    </>
  );
}

export default Dashboard;
