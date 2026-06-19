# 🪶 StackIt — Minimal Q&A Forum Platform

> [!NOTE]
> **Project Context**: This repository represents one of my earlier developer projects. It was created during my second year as a solo submission to demonstrate a functional Q&A forum platform with user authentication, notifications, rich-text questions/answers, and live search. It utilizes a direct model-per-template architecture and lightweight SQLite database.

StackIt is a lightweight developer discussion board inspired by platforms like StackOverflow. It allows authenticated users to ask technical questions using a rich text editor, add search tags, upload reference images, upvote questions, and answer other developers' queries.

---

## 🚀 Key Features

- **User Authentication**: Secure register, login, and profile update (display name and profile picture).
- **Rich Content Editing**: Integrated with the **Quill.js Rich Text Editor** for editing questions and code blocks.
- **Dynamic Seeding**: Automatically seeds database with demo questions (like Alice's Python lists question and Bob's async/await JS question) if the SQLite database is empty.
- **Unified Style & Dark Mode**: A sleek vanilla CSS visual design with **glassmorphism elements**, smooth transitions, and a **dark theme toggle** persisted in local storage.
- **Real Backend Interactions**: Fully integrated AJAX/Fetch operations for voting, marking notifications as read, and deleting questions/answers.
- **Docker Ready**: Multi-environment config with containerization support via Docker and Docker Compose.

---

## 🛠️ Tech Stack

- **Backend**: Python 3, Flask, Flask-SQLAlchemy, Flask-Login
- **Frontend**: HTML5, Vanilla CSS3 (Custom Variables), Bootstrap 5 (CDN), Quill.js
- **Database**: SQLite (local persistence)
- **Deployment & Containers**: Docker, Docker Compose, Gunicorn

---

## 📦 Getting Started

### Prerequisites
- Python 3.9+ or Docker installed.

### Option 1: Run Locally (Python)

1. **Clone the repository** and navigate to the folder:
   ```bash
   cd StackIt
   ```

2. **Create a virtual environment** and activate it:
   ```bash
   # Windows
   python -m venv venv
   .\venv\Scripts\activate

   # macOS / Linux
   python3 -m venv venv
   source venv/bin/activate
   ```

3. **Install dependencies**:
   ```bash
   pip install -r requirements.txt
   ```

4. **Run the application**:
   ```bash
   python run.py
   ```
   Open your browser and navigate to `http://127.0.0.1:5000`.

---

### Option 2: Run with Docker 🐳

To run the application inside a container with automatic volume-mounted database persistence:

1. **Run with Docker Compose**:
   ```bash
   docker-compose up --build
   ```

2. **Access the application**:
   Open your browser and navigate to `http://localhost:5000`.

---

## 📂 Project Structure
```text
StackIt/
├── app/
│   ├── static/
│   │   ├── css/
│   │   │   └── style.css       # Unified design system & Dark mode
│   │   └── profile_pics/       # User uploaded profile pictures
│   ├── templates/
│   │   ├── ask-question.html   # Rich-text question posting form
│   │   ├── home.html           # Main dashboard & Search
│   │   ├── login.html          # Authentication - Sign in
│   │   ├── profile.html        # User profile & my posts
│   │   ├── register.html       # Authentication - Sign up
│   │   ├── success.html        # Question submission success screen
│   │   └── view_question.html  # Question details & Answers list
│   ├── __init__.py             # Flask setup & Config
│   ├── models.py               # SQLite Database Models
│   └── routes.py               # Application endpoints & handlers
├── Dockerfile                  # Container instructions
├── docker-compose.yml          # Container configuration
├── requirements.txt            # Package list
├── run.py                      # Local runner & database seed entrypoint
└── README.md                   # Project documentation
```

---

**🎥 Video Demo Link**: [Google Drive Link](https://drive.google.com/file/d/1fS2JzMCoYoRBcmXCeuMQMmZBX_YyXRIU/view?usp=drive_link)
