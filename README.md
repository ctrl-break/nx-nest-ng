# Starter Kit with NX, Docker, Nest, and Angular

## ✨ Features

- NX Monorepo management
- PostgreSQL database with Docker
- Docker-compose setup
- NestJS backend API
- Angular 19 frontend

## 📋 Prerequisites

- Node.js v20+
- Docker & Docker Compose
- NX CLI (`npm install -g nx`)
- Bash shell (for init script)

## Getting Started

1. Clone the repository: `git clone https://github.com/ctrl-break/nx-nest-ng.git`
2. Install dependencies: `npm install` or `yarn install`
3. Start the development environment: `make init-db`
4. Fill in the environment variables

### Common Commands

| Command          | Description                                  |
|------------------|----------------------------------------------|
| `make init-db`   | Initialize and start database containers     |
| `make remove-db` | Remove database containers and clean config  |
| `make dev-api`   | Start NestJS API in development mode         |
| `make build-api` | Build production API and start containers    |
| `make down`      | Stop all running containers                  |
|                  |                                              |
| `npm run format` | Format code with Prettier                    |
| `npm run lint`   | Run ESLint static analysis                   |
| `npm run lint:fix`| Auto-fix linting issues                     |


## 🏗 Project Structure

```
.
├── apps/
│   ├── api/         # NestJS backend application
│   └── front/         # Angular 19 frontend
├── db/              # Database initialization scripts
├── .env             # Environment variables (generated)
└── Makefile         # Development commands
```

## 🔧 Environment Variables

The initialization script creates these variables in `.env`:

| Variable         | Description                | Default    |
|------------------|----------------------------|------------|
| APP_NAME         | Application name           | app        |
| DB_DATABASE      | PostgreSQL database name   | docker     |
| DB_USERNAME      | Database user              | docker     |
| DB_PASSWORD      | Database password          | -          |
| DATABASE_PORT    | PostgreSQL port            | 8100       |
| DATABASE_URL     | Connection string          | -          |
| JWT_SECRET       | Authentication secret      | Auto-generated UUID |