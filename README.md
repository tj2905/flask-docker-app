# Flask + PostgreSQL Docker App

## What This Does
A containerized web application built with Flask and PostgreSQL.
Tracks page visits and stores count in database.

## Tech Stack
- Python Flask
- PostgreSQL
- Docker
- Docker Compose

## Architecture
Browser → Flask Container → PostgreSQL Container → pgdata Volume

## How To Run

### Prerequisites
- Docker installed
- Docker Compose installed

### Steps
1. Clone this repo
2. Create .env file:

DB_NAME=myapp
DB_USER=user
DB_PASSWORD=password
DB_HOST=db

3. Run:
docker compose up -d

4. Open:
http://localhost:5000

## Output
Page visited X times!

## Concepts Used
- Multi-container Docker Compose
- Environment variables (.env)
- Persistent volumes
- Health checks
- Restart policy
