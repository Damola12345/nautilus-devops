## TASK

Setup a CI/CD pipeline with GitHub Actions to deploy an application of your choice to AWS EC2 instance.

## SOLUTION

Technologies
* Node & express js
* Github Actions

# Run App locally

Basic fundamental steps to build an nodejs app, setting up environment with installation of modules, running the server, and perform basic communication with the server.

* In the project directory, you can run:
    - `npm install`
    - `npm install express` 
    - `npm start`

Runs the app in the development mode.<br />
Open [http://localhost:3000](http://localhost:3000) to view it in the browser.

## CI/CD Pipeline with Github Actions

The pipeline has been configured to run everytime a push is made to the `ft/week7_cicd` branch.

#### Workflow Steps

- Checkout: The `checkout` action is used to checkout the source code.

- Set up dependencies and requirements for our build, configuring cache for npm build system.

- Deploy to EC2 instance using the [easingthemes/ssh-deploy action](https://github.com/easingthemes/ssh-deploy)

- Executing remote ssh commands using ssh key via [appleboy/ssh-action@master](https://github.com/appleboy/ssh-action) to EC2 server




