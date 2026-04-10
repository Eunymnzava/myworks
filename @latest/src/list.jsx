import { useState, useEffect } from "react";

function DigitalClock() {
  const [time, setTime] = useState(new Date());

  useEffect(() => {
    const intervalId = setInterval(() => setTime(new Date()), 1000);
    return () => clearInterval(intervalId);
  }, []);

  function formatTime() {
    let hours = time.getHours();
    const minutes = time.getMinutes();
    const seconds = time.getSeconds();
    const meridian = hours >= 12 ? "PM" : "AM";

    hours = hours % 12 || 12;
    return `${padZero(hours)}: ${padZero(minutes)}: ${padZero(
      seconds
    )} ${meridian}`;
  }

  function padZero(number) {
    return (number < 10 ? "0" : "") + number;
  }

  return (
    <div className="clock-container">
      <div className="clock">
        <span>{formatTime()}</span>
      </div>
    </div>
  );
}

export default DigitalClock;
/*function MyComponent() {
  const [tasks, setTasks] = useState([
    "Wake up",
    "eat breakfast",
    "walk the dog",
  ]);
  const [newTasks, setNewTasks] = useState("");

  function handleInputChange(event) {
    setNewTasks(event.target.value);
  }
  function addTask() {
    if(newTasks.trim() !== "") {
        setTasks(t => [...t, newTasks]);
    setNewTasks("");
    }
   
  }
  function deleteTask(index) {
    const updatedTasks = tasks.filter((_, i) => i!== index);
    setTasks(updatedTasks);
  }
  function moveTaskUp(index) {
    if(index >0){
        const updatedTasks =[...tasks];
        [updatedTasks[index], updatedTasks[index-1]] = [updatedTasks[index-1], updatedTasks[index]];
        setTasks(updatedTasks);
    }
  }
  function moveTaskDown(index) {
    if(index < tasks.length -1){
        const updatedTasks =[...tasks];
        [updatedTasks[index], updatedTasks[index-1]] = [updatedTasks[index-1], updatedTasks[index]];
        setTasks(updatedTasks);
    }
  }

  return (
    <>
      <div className="to-do-list">
        <h1>To-Do List</h1>
        <div>
          <input
            type="text"
            value={newTasks}
            onChange={handleInputChange}
            placeholder="Add a new task"
          />
          <button onClick={addTask}>Add</button>
        </div>
      </div>
      <ol>
        {tasks.map((task, index) => (
          <li key={index}>
            <span className="text">{task}</span>
            <button className="delete-button" onClick={() => deleteTask(index)}>
              Delete
            </button>
            <button className="move-button" onClick={() => moveTaskUp(index)}>
              Move up
            </button>
            <button
              className="move-button"
              onClick={() => moveTaskDown(index)}
            >
              Move down
            </button>
          </li>
        ))}
      </ol>
    </>
  );
}

export default MyComponent;*/
