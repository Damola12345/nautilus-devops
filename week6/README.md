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
Infrastructure-as-code is an idea where we build our software infrastructure through config files or manifest files. But before we dive deep into its concept, let’s first understand the two common approaches to managing our software infrastructure, the imperative way, and the declarative way.

The declarative approach defines the desired outcome or what we want to accomplish without feeding the tool with the step-by-step details of how to do it. while the imperative approach defines how an object state should change and the exact order in which those changes should be executed.