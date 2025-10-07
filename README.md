# DevOps Next.js App

A containerized Next.js application with automated CI/CD pipeline and Kubernetes deployment.

## Quick Start

### Local Development
```bash
npm install
npm run dev
```

### Docker Build
```bash
docker build -t nextjs-app .
docker run -p 3000:3000 nextjs-app
```

### Kubernetes Deployment
```bash
# Update image name in k8s/deployment.yaml
kubectl apply -f k8s/
kubectl get pods
kubectl get services
```

Access the app at `http://localhost:30080`

## Features
- Multi-stage Docker build with security best practices
- Automated CI/CD with GitHub Actions
- Kubernetes deployment with health checks
- Container registry integration (GHCR)