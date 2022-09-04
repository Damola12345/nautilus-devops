## TASK

Deploy an application of your choice with Kubernetes and expose the deployment. Share the External IP.

Technologies
* Django
* Docker
* Docker Compose
* CI/CD - Github Actions
* Dockerhub
* Kubernetes

# Run App locally
* In the project directory, you can set up virtualenv for that project by running:
    - `cd week4`
    - `python3 -m venv venv `

* These commands create a venv/ directory in your project where all dependencies are installed. You need to activate it first by running:
    - `source venv/bin/activate`

* You should see a (venv) appear at the beginning of your terminal prompt indicating that you are working inside the virtualenv. Run these command:
    - `pip3 install django`
    - `django-admin startproject week4 .`
    - `pip3 freeze > requirements.txt`
    - `python3 manage.py runserver `

Runs the app in the development mode.<br />
Open [http://127.0.0.1:8000/](http://127.0.0.1:8000/) to view it in the browser.

* To leave the virtual environment run:
    - `deactivate`

# Containerize The App
* Write a Dockerfile that will properly turn my app into a container

* Run APP with this command 
    - `docker-compose up --build -d `

* Shutdown APP with this command 
    - `docker-compose down`  

## CI/CD Pipeline with Github Actions

The pipeline has been configured to run everytime a push/pull_request is made to the `main` branch. You should uncomment the `ci.yml` workflow.

#### Workflow Steps

- Checkout: The `checkout` action is used to checkout the source code.

- Docker buildx setup: The `buildx` action is a Docker CLI plugin for extended build capabilities with BuildKit.

- Dockerhub login: The `Dockerhub login` action is used to login against a Docker registry.

- Build and push: The `Build and push` action is used to build and push Docker images with Buildx

- Deploy to Dockerhub: View pushed image in your dockerhub account


## Kubernetes
* Run APP with this command 
    - Kubectl create -f deploy.yml
    - Kubectl create -f svc.yml
    - Kubectl get deploy,svc
    - curl http://localhost:30004