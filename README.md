# DevOps Next.js App

A containerized Next.js application with automated CI/CD pipeline and Kubernetes deployment.

![succesNextApp](https://github.com/user-attachments/assets/ad63d0fa-0c54-4061-9220-0e45d3081573)


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

![pods](https://github.com/user-attachments/assets/486e3264-28e9-4e83-9819-e03d9344705c)


![Uploading succesTerminal.jpg…]()



![Uploading succesNextApp.jpg…]()

Access the app at `http://localhost:30080`

## Features
- Multi-stage Docker build with security best practices
- Automated CI/CD with GitHub Actions
- Kubernetes deployment with health checks
- Container registry integration (GHCR)
