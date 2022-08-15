## TASK 

- 1. What do you understand by INFRASTRUCTURE AS CODE ( not less than 100 words)
- 2. Set up your AWS account ( if you do not have already, please create it as we want this task to be run on AWS only for the sake of this assessment )
- 3. Install Terraform
- 4. Create a terraform manifest to deploy 1 instance ( commit the manifest to github)
- 5. Plan and apply your configuration ( show a screenshot of the plan and apply output )
- 6. Confirm your instance is running (show a screenshot of the running instance in whatever cloud provider you chose)
- 7. Create a new manifest to deploy 10 instances and apply it
- 8. Using terraform , deploy a cluster of 6 web servers ( for high availability - use Auto Scaling for this)
- 9. Create configuration files to Deploy a load balancer ( deploy the load balancer )
- 10. Lastly destroy all the resources created but commit all your manifest to Github and share the URL(Ensure
to test your manifest by running Terraform apply, as this is the only thing we should run to be able to test your code is working and it is able to spin up all the resources at once )

# SOLUTION

* What is Infrastructure as Code (IaC)
    - Infrastructure-as-code is an idea where we build our software infrastructure through config files or manifest files. But before we dive deep into its concept, let’s first understand the two common approaches to managing our software infrastructure, the imperative way, and the declarative way.

    - The declarative approach defines the desired outcome or what we want to accomplish without feeding the tool with the step-by-step details of how to do it. while the imperative approach defines how an object state should change and the exact order in which those changes should be executed. The most popular and widely used IaC tools are Chef, Ansible, Puppet, and Terraform. Each has its techniques and approach and even has its format of the file is read.

    - With Infrastructure-as-code (IaC), you maintain a file that can be referenced by a multitude of servers. One of the main benefits of this is, that you are assured that if it works on one server, it will then work the same way with another. And let’s say, you no longer want a component to be included in the process of provisioning, you can easily make changes to the file and the tool will then apply the changes to the server based on the contents of the file.

    - Since the manifest files are usually tiny in size, this allows us to have a very testable infrastructure as well, as we can spin up a server from the config file and if it doesn't work, perform some changes then repeat the process until the output becomes satisfactory. This solves the problem with replicability and scalability of our infrastructure as one file is enough for you to provision clones of servers very quickly.

    - In the end, DevOps is the primary foundation. All of the process enhancements and automation we do should improve or solve one of its primary pillars. Iac introduces us to a practice that will allow us to easily keep track, improve maintainability and achieve scalability in our infrastructure.

# Install Terraform
- Visit [ Terraform Documentation](https://www.terraform.io/downloads) for a clear guide
- Visit [ Terraform Documentation](https://learn.hashicorp.com/tutorials/terraform/install-cli)

# Basic Terraform command 
- `terraform version` — Shows the current version of your Terraform and notifies you if there is a newer version available for download.
- `terraform init` — In order to prepare the working directory for use with Terraform, the terraform init command performs Backend Initialization, Child Module Installation, and Plugin Installation.
- `terraform fmt` — Format your Terraform configuration files using the HCL language standard.
- `terraform validate` — Validates the configuration files in your directory, and does not access any remote state or services. terraform init should be run before this command.
- `terraform plan` — Plan will generate an execution plan, showing you what actions will be taken without actually performing the planned actions.
- `terraform apply` — Creates or updates infrastructure depending on the configuration files. By default, a plan will be generated first and will need to be approved before it is applied.
- `terraform apply -auto-approve` — Apply changes without having to interactively type ‘yes’ to the plan. Useful in automation CI/CD pipelines.
- `terraform destroy` — Destroys the infrastructure managed by Terraform.

# Steps 
- Run the `terraform fmt` command to automatically format the source code to make it human-readable

- Run the `terraform validate` command to validates the configuration files in a directory

- Next, run the `terraform init` command to initialize the working directory

- Run the `terraform plan` command to generate an execution plan

- Run the `terraform apply` command to Creates or updates infrastructure depending on the configuration files.

