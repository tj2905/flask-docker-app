# 🚀 Version 1.0 — Stable Release

This project is production-ready at a basic level and prepared for deployment.

---

# Flask + PostgreSQL — Dockerized Web Application

## 🚀 What This Does

A fully containerized web application built with Flask and PostgreSQL.  
It tracks page visits and stores the count in a database.

This project demonstrates real-world DevOps practices using Docker.

---

## 🛠 Tech Stack

- Python Flask — Backend web framework  
- PostgreSQL — Database  
- Docker — Containerization  
- Docker Compose — Multi-container management  

---

## 🧱 Architecture

```
Browser  
↓  
Flask Container (port 5000)  
↓ psycopg2  
PostgreSQL Container (port 5432)  
↓  
pgdata Volume (persistent storage)
```

---

## ⭐ Project Highlights

- Multi-container architecture using Docker Compose  
- Flask connected to PostgreSQL database  
- Persistent data storage using Docker volumes  
- Environment variables using `.env` (no hardcoded secrets)  
- Health checks for monitoring app status  
- Restart policy (`restart: always`) for auto recovery  
- Clean Docker image using `.dockerignore`  

---

## ⚙️ How To Run

### Prerequisites

- Docker installed  
- Docker Compose installed  

### Steps

1. Clone this repository  

2. Create a `.env` file in project root:

```env
DB_NAME=myapp
DB_USER=user
DB_PASSWORD=password
DB_HOST=db
```

3. Run the project:

```bash
docker compose up -d
```

4. Open in browser:

```
http://localhost:5000
```

---

## 📊 Expected Output

```
Page visited X times!
```

Count increases on refreshing.

---

## 🐳 Docker Hub

You can directly pull and run the app:

```bash
docker pull yourusername/flask-devops-app:v1.0
docker run -p 5000:5000 yourusername/flask-devops-app:v1.0
```

---

## 📁 Project Structure

```
flask-docker-app/
├── app.py
├── Dockerfile
├── docker-compose.yml
├── requirements.txt
├── .env (not committed)
├── .gitignore
├── .dockerignore
└── README.md
```

---

## 🧠 Concepts Demonstrated

- Docker image building  
- Multi-container architecture  
- Container networking  
- Persistent volumes  
- Environment variables (.env)  
- Health checks  
- Restart policies  
- Secure configuration management  

---

## 🔮 Future Improvements

- Add CI/CD using GitHub Actions  
- Use Kubernetes for orchestration  
- Add Terraform for infrastructure  

---

## 💡 Author

Built as part of DevOps learning journey 🚀
