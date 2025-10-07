# DevOps Next.js App 🚀

A containerized Next.js application with an automated CI/CD pipeline and Kubernetes deployment using GitHub Actions and GitHub Container Registry (GHCR).

## Features 🌟

* **Next.js Application**
  A simple, scalable React-based web application built using Next.js.

* **Docker Containerization**
  Multi-stage Docker build using Alpine Linux for minimal image size and fast builds.

* **GitHub Actions CI/CD**
  Fully automated continuous integration and continuous deployment pipeline.

* **GitHub Container Registry (GHCR)**
  Secure image storage with easy integration into your GitHub repositories.

* **Kubernetes Deployment**
  Scalable, containerized application with Kubernetes orchestration for easy deployment and scaling.

* **Health Checks**
  Basic health checks for application reliability.

## Prerequisites ⚙️

Before starting, ensure you have the following installed:

* **Node.js 18+**
  [Install Node.js](https://nodejs.org/en/) if you haven't already.

* **Docker Desktop**
  [Install Docker](https://www.docker.com/products/docker-desktop) for building and running containers locally.

* **Kubernetes (Docker Desktop or Minikube)**
  Install Kubernetes through Docker Desktop or [Minikube](https://minikube.sigs.k8s.io/docs/).

* **Git**
  Make sure Git is installed and set up on your system.

## Setup Instructions 🛠️

Follow the steps below to set up and run the application locally and in the cloud.

### 1. Clone the Repository

First, clone the repository to your local machine:

```bash
git clone https://github.com/YOUR-USERNAME/devops-nextjs-app.git
cd devops-nextjs-app
```

### 2. Install Dependencies

Install the necessary Node.js dependencies for the Next.js app:

```bash
npm install
```

### 3. Run Locally

To run the Next.js application locally, use the following command:

```bash
npm run dev
```

Visit [http://localhost:3000](http://localhost:3000) in your browser to see the app running locally.

### 4. Build Docker Image

Now, you can build a Docker image for the app:

```bash
docker build -t nextjs-app .
```

### 5. Run Docker Container

Once the image is built, you can run the container locally:

```bash
docker run -p 3000:3000 nextjs-app
```

Your app will now be available at [http://localhost:3000](http://localhost:3000).

### 6. Push to GitHub Container Registry (GHCR)

To push the Docker image to GitHub Container Registry:

1. Tag the image with your GitHub username and repository:

   ```bash
   docker tag nextjs-app ghcr.io/YOUR-USERNAME/devops-nextjs-app:latest
   ```

2. Log in to GitHub Container Registry:

   ```bash
   echo YOUR_GITHUB_TOKEN | docker login ghcr.io -u YOUR-USERNAME --password-stdin
   ```

   *Note: Replace `YOUR_GITHUB_TOKEN` with a GitHub Personal Access Token that has the `write:packages` scope.*

3. Push the image to GHCR:

   ```bash
   docker push ghcr.io/YOUR-USERNAME/devops-nextjs-app:latest
   ```

### 7. Kubernetes Deployment

To deploy the application to Kubernetes, follow these steps:

1. Apply Kubernetes manifests (make sure your Kubernetes context is set to the desired cluster):

   ```bash
   kubectl apply -f k8s/
   ```

2. Check the status of your pods to ensure they are running:

   ```bash
   kubectl get pods
   ```

3. Port-forward the pod to access the application locally:

   ```bash
   kubectl port-forward <pod-name> 3000:3000
   ```

4. Open [http://localhost:3000](http://localhost:3000) in your browser to view the app running on Kubernetes.

### 8. Health Checks

Health checks are included in the Kubernetes deployment to ensure that your application is always available and responsive. You can monitor the app's health by querying the Kubernetes API or by checking the pod status:

```bash
kubectl get pods
```

If the app is unresponsive, Kubernetes will attempt to restart the pod.

## CI/CD with GitHub Actions 🔧

This repository comes with an automated GitHub Actions pipeline for continuous integration and continuous deployment. It automatically triggers on pushes to the `main` branch and deploys the Docker image to GHCR and updates the Kubernetes deployment.

### GitHub Actions Workflow

* **Builds and tests** the Next.js app on every push.
* **Builds the Docker image** and pushes it to GHCR.
* **Deploys the app** to the Kubernetes cluster using `kubectl` commands.

The GitHub Actions workflow file can be found under `.github/workflows/ci-cd.yml`.

## Troubleshooting 🚨

* **Docker build issues:** If you encounter problems while building the Docker image, ensure your Dockerfile is properly configured. Use `docker build --no-cache` to rebuild without using the cache.

* **Kubernetes deployment issues:** If the app doesn't deploy correctly on Kubernetes, check the logs of the pods with:

  ```bash
  kubectl logs <pod-name>
  ```

* **Authentication with GHCR:** Ensure that you're using a valid GitHub Personal Access Token (PAT) with the necessary permissions to push to GHCR.

## Contributing 🤝

Feel free to fork this repository, make changes, and submit pull requests. Contributions are always welcome!


---
