# StartTech Application
Full-stack React + Go application with automated CI/CD.
## Structure
- `frontend/`: React UI
- `backend/`: Go API with Docker support
- `scripts/`: Deployment & health check helpers
- `.github/workflows/`: CI/CD pipelines
## CI/CD
Pushes to `main` in `frontend/` or `backend/` trigger automated builds, tests, and deployments.
