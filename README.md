# outilmaria-back - FastAPI Backend 

Backend API for "L'Outil de Maria" project, developed with **Python 3.13.1 + FastAPI**, designed to handle structured DAE requests, manage roles, and provide secure access for multiple actors (Domain Managers, Assistant, PMO, Contract Manager). 

---

## Project Features (Planned)
- FastAPI application with modular routing
- PostgreSQL database integration
- JWT-based authentication & role-based access control
- RESTful endpoints with validation using Pydantic
- Dockerized environment (local development)
- CI/CD pipeline via GitHub Actions
- Automatic testing (unit + integration)
- OpenAPI schema (Swagger docs)

---

## Stack 

| Layer     | Tech        |
|-----------|-------------|
| Backend   | Python 3.13 + FastAPI |
| Database  | PostgreSQL |
| Auth      | JWT (Access + Refresh) |
| Dev Tools | Docker, GitHub Actions |
| Testing   | Pytest + HTTPX |

---

## Project Structure (Target Structure)

app/ 
  |-- main.py # FastAPI app init
  |-- api/ # Routers (e.G., /requests, /users)
  |-- models/ # SQLAlchemy models 
  |-- schemas/ # Pydantic schemas
  |-- services/ # Business logic 
  |-- db/ # DB session, migrations
  |-- core/ # Settings, auth 
tests/ # Pytest unit / integration tests
.env # Environment variables 

---

## Setup Instructions

### With Docker (Recommended)

```bash
# Build and start backend
docker-compose up --build

### Manual Setup (Without Docker)
1. Create virtual environment
```bash
python -m venv .venv
source .venv/bin/activate








