import {
  BarChart,
  Bar,
  XAxis,
  YAxis,
  CartesianGrid,
  Tooltip,
  Legend,
  ResponsiveContainer,
} from "recharts";
import "./graphcard.css";

function GraphCard() {
  const data = [
    { month: "Jan", Buy: 400, Sold: 240 },
    { month: "Feb", Buy: 300, Sold: 139 },
    { month: "Mar", Buy: 500, Sold: 380 },
    { month: "Apr", Buy: 200, Sold: 190 },
    { month: "May", Buy: 700, Sold: 480 },
  ];

  return (
    <div className="card3">
      <h3 className="trans-title">Monthly Transactions</h3>

      <div className="chart-container">
        <ResponsiveContainer>
          <BarChart data={data}>
            <CartesianGrid strokeDasharray="3 3" />

            <XAxis dataKey="month" />
            <YAxis />
            <Tooltip />
            <Legend />

            {/* 🔥 TWO BARS */}
            <Bar dataKey="Buy" fill="#4CAF50" radius={[5, 5, 0, 0]} />
            <Bar dataKey="Sold" fill="#F44336" radius={[5, 5, 0, 0]} />
          </BarChart>
        </ResponsiveContainer>
      </div>
    </div>
  );
}

export default GraphCard;
