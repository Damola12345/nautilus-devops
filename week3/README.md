## TASK

- Serve a simple application running on any random port (eg: 3000) via Nginx
- Install SSL/TLS certificate in Nginx to load application over HTTPS

## SOLUTION
# Serve a simple application running on any random port (eg: 3000) via Nginx

Technologies
* Docker
* Docker Compose
* Node & express js
* Nginx

# Run App locally
* In the project directory, you can run:
    - `npm install`
    - `npm start`

Runs the app in the development mode.<br />
Open [http://localhost:3000](http://localhost:3000) to view it in the browser.


# Install SSL/TLS certificate in Nginx to load application over HTTPS

* Run this command below to create self signed certificate
    - `sudo openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout         nginx-selfsigned.key -out nginx-selfsigned.crt`

* Run APP with this command 
    - `docker-compose up --build -d `

* Shutdown APP with this command 
    - `docker-compose down`  