
This project automates building, testing, and deploying a Node.js app using Jenkins and Docker.

---

## Tools Used

- **Jenkins**: Automation server for CI/CD pipelines  
- **Docker**: Container platform to build and run the app image  
- **Git**: Version control system to manage source code  
- **GitHub**: Git repository hosting service to store and trigger builds  
- **Node.js**: Runtime environment for the app  
- **Docker Hub**: Repository to store Docker images  

---

## Important Commands

### Git commands
```
git add .
git commit -m "Jenkins CI/CD Pipeline"
git push origin main
```

### Docker commands (used locally or in Jenkins)
```
# Build Docker image
docker build -t abbastaher/jenkins-demo-app:latest .

# Run tests in Docker container (adjust command as per tests)
docker run --rm abbastaher/jenkins-demo-app:latest npm test

# Push Docker image to Docker Hub
docker login
docker push abbastaher/jenkins-demo-app:latest

# Run app container (for testing)
docker run -d -p 3000:3000 abbastaher/jenkins-demo-app:latest
```

---

## Jenkins Pipeline Highlights

- Jenkinsfile contains declarative pipeline stages:  
  - Checkout code from GitHub  
  - Build Docker image  
  - Run tests inside Docker  
  - Push image to Docker Hub  
  - Deploy Docker container
  - monitor pipeline

- Docker Hub credentials securely stored in Jenkins credentials store  
- Pipeline triggers automatically on GitHub push via webhook  

---

## How to Use

1. Push your code and pipeline files to GitHub.  
2. Jenkins detects changes and runs pipeline.  
3. Monitor builds and logs in Jenkins UI.

