# outilmaria-back - FastAPI Backend 

Backend API for "L'Outil de Maria" project, developed with **Python 3.13.1 + FastAPI**, designed to handle structured DAE requests, manage roles, and provide secure access for multiple actors (Domain Managers, Assistant, PMO, Contract Manager). 

---

## Features 
- RESTful API using FastAPI
- PostgreSQL database  integration
- JWT-based authentication system
- Role-based permissions (Domain Manager, Assistant, PMO, Contract Manager)
- Dockerized development
- CI/CD with GitHub Actions
- Swagger (OpenAPI) documentation
- Unit & integration testing

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

<pre> app/ 
  ├── main.py # FastAPI app init 
  ├── api/ # Routers (e.g., /requests, /users) 
  ├── models/ # SQLAlchemy models 
  ├── schemas/ # Pydantic schemas 
  ├── services/ # Business logic 
  ├── db/ # DB session, migrations 
  ├── core/ # Settings, auth 
tests/ # Pytest unit / integration tests 
.env # Environment variables </pre>

---

## Setup Instructions

### With Docker (Recommended)

```bash
# Build and start backend
docker-compose up --build
```
Make sure you have Docker + Docker Compose installed

FastAPI will be available at: http://localhost:8000/docs

### Manual Setup (Without Docker)

1. Create virtual environment
```bash
python -m venv .venv
source .venv/bin/activate
```

2. Install dependencies
```bash
pip install -r requirements.txt
```

3. Run server
```bash
uvicorn app.main:app --reload
```

4. Visit
http://localhost:8000/docs – Swagger UI

### Environment Variables 

Create a .env file with the following (example): 
```bash
DATABASE_URL=postgresql://user:password@localhost/dbname
SECRET_KEY=your_secret_key
ALGORITHM=HS256
ACCESS_TOKEN_EXPIRE_MINUTES=30
```

### Running Tests
```bash
pytest
```

### Linting & Formatting 
To be added : 
- Formatter : black, isort
- Linter : flake8

### CI/CD 
GitHub Actions (planned): 
- On push/PR : run lint + tests
- On main : Docker build or deploy

### Contribution Workflow
- main : production-ready
- develop : integration branch
- feat/* : new features
- fix/* : bug fixes
- hotfix/* : urgent bugs fixes
- test/* : test ideas or prototypes

  ```bash
  feat(auth) : implement JWT token logic
  fix(request) : correct form validation issue
  ```

### License 
MIT or Internal (to define). 
