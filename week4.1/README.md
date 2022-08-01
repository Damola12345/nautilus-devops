# TASK

Using Docker-Compose, configure and deploy an nginx application that routes to two applications running also in docker application.
Specifications: Using nginx location directive,

- a. /django -> should route to app1
- b. /nest -> should route to app2

Technologies
* Django
* Nest.js
* Nginx
* Docker
* Docker Compose

# Containerize The App
* Write a Dockerfile that will properly turn my app into a container

* Run APP with this command 
    - `docker-compose up --build -d `

* Stop APP with this command 
    - `docker-compose stop `

* Shutdown APP with this command 
    - `docker-compose down`  
