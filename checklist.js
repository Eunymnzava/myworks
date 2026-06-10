
    function register() {
        document.getElementById("landing").style.display = "none";
        document.getElementById("register").style.display = "block";
        document.getElementById("signup").style.display = "none";
        document.getElementById("page1").style.display = "none";
        document.getElementById("reviews").style.display = "none";
    }

    function showSignup() {
        document.getElementById("landing").style.display = "none";
        document.getElementById("register").style.display = "none";
        document.getElementById("signup").style.display = "block";
        document.getElementById("page1").style.display = "none";
        document.getElementById("reviews").style.display = "none";
    }
    function page1() {
        document.getElementById("landing").style.display = "none";
        document.getElementById("register").style.display = "none";
        document.getElementById("signup").style.display = "none";
        document.getElementById("page1").style.display = "block";
        document.getElementById("reviews").style.display = "none";
    }
    function reviews() {
        document.getElementById("landing").style.display = "none";
        document.getElementById("register").style.display = "none";
        document.getElementById("signup").style.display = "none";
        document.getElementById("page1").style.display = "none";
        document.getElementById("reviews").style.display = "block";
    }
    function logout() {
    const confirmLogout = confirm("Are you sure you want to log out?");
    if (confirmLogout) {
        document.getElementById("landing").style.display = "none";
        document.getElementById("register").style.display = "block";
        document.getElementById("signup").style.display = "none";
        document.getElementById("page1").style.display = "none";
        document.getElementById("reviews").style.display = "none";
    }
    }
    function validateForm() {
        let pass = document.getElementById("password    ").value;
        let confirm = document.getElementById("confirm").value;

        if (pass !== confirm) {
            alert("Passwords do not match!");
            return false; 
        }
        return true; 
    }
    function updateDateTime() {
    const now = new Date();

    const options = {
        weekday: 'short', 
        year: 'numeric',
        month: 'short',   
        day: 'numeric',
        hour: '2-digit',
        minute: '2-digit',
        second: '2-digit',
    };

    const formatted = now.toLocaleString('en-US', options);

    document.getElementById('datetime').textContent = formatted;
}
updateDateTime();
setInterval(updateDateTime, 1000);

let tasks = [];

document.getElementById("todoForm").addEventListener("submit", function(e) {
    e.preventDefault();

    const title = document.getElementById("taskTitle").value;
    const date = document.getElementById("taskDate").value;
    const start = document.getElementById("startTime").value;
    const end = document.getElementById("endTime").value;

    if (title && date && start && end) {
        const task = { title, date, start, end, done: false };
        tasks.push(task);
        displayTasks();
        this.reset();
    }
});

function displayTasks() {
    const list = document.getElementById("todoList");
    list.innerHTML = "";
    tasks.forEach((task, index) => {
        const item = document.createElement("div");
        item.classList.add("todo-item", "d-flex", "align-items-center", "justify-content-between");

        item.innerHTML = `
            <div>
                <input type="checkbox" ${task.done ? "checked" : ""} onchange="toggleTask(${index})">
                <strong>${task.title}</strong> <br>
                <small>${task.date} | ${task.start} - ${task.end}</small>
            </div>
            <button class="btn btn-sm btn-outline-danger" onclick="deleteTask(${index})">🗑️</button>
        `;
        list.appendChild(item);
    });
}

function toggleTask(index) {
    tasks[index].done = !tasks[index].done;
    displayTasks();
}

function deleteTask(index) {
    tasks.splice(index, 1);
    displayTasks();
}

function saveTasks() {
    localStorage.setItem("todoList", JSON.stringify(tasks));
    alert("✅ Tasks saved successfully!");
}

function loadTasks() {
    const stored = localStorage.getItem("todoList");
    if (stored) {
        tasks = JSON.parse(stored);
        displayTasks();
    }
}

window.onload = loadTasks;

function openForgotModal() {
    document.getElementById("forgotModal").style.display = "flex";
    document.getElementById("register").style.opacity = "0.5";
}

function closeForgotModal() {
    document.getElementById("forgotModal").style.display = "none";
    document.getElementById("register").style.opacity = "1";
}

function resetPassword() {
    const newPass = document.getElementById("fp-newpass").value;
    const confirmPass = document.getElementById("fp-confirmpass").value;

    if (newPass !== confirmPass) {
        alert("Passwords do not match!");
        return;
    }

    alert("Password successfully reset!");
    closeForgotModal();
}