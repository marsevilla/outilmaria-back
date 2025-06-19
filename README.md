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
  ├──main.py # FastAPI app init
  ├──api/ # Routers (e.G., /requests, /users)
  ├──models/ # SQLAlchemy models 
  ├──schemas/ # Pydantic schemas
  ├──services/ # Business logic 
  ├──db/ # DB session, migrations
  ├──core/ # Settings, auth 
tests/ # Pytest unit / integration tests
.env # Environment variables 

---

## Setup Instructions

### With Docker (Recommended)

```bash
# Build and start backend
docker-compose up --build
```
Make sure you have Docker + Docker Compose installed

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
  
### Manual Setup 
1. Install dependencies
  ```bash
npm install
```
2. Run dev server:
```bash
ng serve
```
App: http://localhost:4200/

### Environments 
Update src/environments/environment.ts :
```bash
export const environment = {
  production: false,
  apiUrl: 'http://localhost:8000',
};
```

### Tests 
```bash
ng test
```

### Format & Lint 
```bash
npm run lint
npm run format
```









