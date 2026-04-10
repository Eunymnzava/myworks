import { useState } from "react";

function Dashboard() {
  const [rate] = useState(500);
  const [balanceUnits, setBalanceUnits] = useState(50);

  const [buyAmount, setBuyAmount] = useState("");
  const [sellUnits, setSellUnits] = useState("");

  const [transactions, setTransactions] = useState([
    { id: 1, type: "BUY", units: 10, tsh: 5000, date: "2026-04-01" },
    { id: 2, type: "SELL", units: 5, tsh: 2500, date: "2026-04-02" },
  ]);

  const calculatedUnits = buyAmount ? buyAmount / rate : 0;
  const calculatedTsh = sellUnits ? sellUnits * rate : 0;

  const handleBuy = () => {
    if (!buyAmount) return;

    const units = buyAmount / rate;
    setBalanceUnits(balanceUnits + units);

    setTransactions([
      {
        id: Date.now(),
        type: "BUY",
        units,
        tsh: buyAmount,
        date: new Date().toISOString().split("T")[0],
      },
      ...transactions,
    ]);

    setBuyAmount("");
  };

  const handleSell = () => {
    if (!sellUnits || sellUnits > balanceUnits) return;

    const tsh = sellUnits * rate;
    setBalanceUnits(balanceUnits - sellUnits);

    setTransactions([
      {
        id: Date.now(),
        type: "SELL",
        units: sellUnits,
        tsh,
        date: new Date().toISOString().split("T")[0],
      },
      ...transactions,
    ]);

    setSellUnits("");
  };

  return (
    <div className="container">
      <h1>Dashboard</h1>

    
      <div className="cards">
        <div className="card">
          <p>Units Balance</p>
          <h2>{balanceUnits}</h2>
        </div>

        <div className="card">
          <p>Tsh Equivalent</p>
          <h2>{(balanceUnits * rate).toLocaleString()} Tsh</h2>
        </div>

        <div className="card">
          <p>Conversion Rate</p>
          <h2>1 Unit = {rate} Tsh</h2>
        </div>
      </div>

     
      <div className="forms">
        <div className="form-box">
          <h2>Buy Units</h2>
          <input
            type="number"
            placeholder="Enter Tsh"
            value={buyAmount}
            onChange={(e) => setBuyAmount(e.target.value)}
          />
          <p>You will receive: {calculatedUnits} units</p>
          <button className="buy-btn" onClick={handleBuy}>
            Buy
          </button>
        </div>

        <div className="form-box">
          <h2>Sell Units</h2>
          <input
            type="number"
            placeholder="Enter Units"
            value={sellUnits}
            onChange={(e) => setSellUnits(e.target.value)}
          />
          <p>You will receive: {calculatedTsh} Tsh</p>
          <button className="sell-btn" onClick={handleSell}>
            Sell
          </button>
        </div>
      </div>

     
      <div className="table-box">
        <h2>Recent Transactions</h2>
        <table>
          <thead>
            <tr>
              <th>Date</th>
              <th>Type</th>
              <th>Units</th>
              <th>Tsh</th>
            </tr>
          </thead>
          <tbody>
            {transactions.map((tx) => (
              <tr key={tx.id}>
                <td>{tx.date}</td>
                <td className={tx.type === "BUY" ? "buy" : "sell"}>
                  {tx.type}
                </td>
                <td>{tx.units}</td>
                <td>{tx.tsh}</td>
              </tr>
            ))}
          </tbody>
        </table>
      </div>
    </div>
  );
}

export default Dashboard;
