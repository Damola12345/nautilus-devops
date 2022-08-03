## TASK

- 1. How does Ansible work?
- 2. Using Ansible, install these applications on 3 Ubuntu servers - curl, http, nginx, apache.

## SOLUTION

# TASK 1
* How does Ansible work?
    - Ansible is an open source automation configuration management and application deployment tool written in Python.. It helps to reduce managerial overhead by automating the deployment of the app and managing IT infrastructure.  It runs on UNIX-like systems and can provision and configure both UNIX-like and Windows systems. Unlike other automation software, Ansible does not require an agent to run on a target system. It leverages on the SSH connection and python interpreter to perform the given tasks on the target system. Ansible can be installed on a cloud server to manage other cloud servers from a central location, or it can also be configured to use on a personal system to manage cloud or on-premises systems.

    - Normally, there is a control node and host nodes. Ansible is installed in the control node and will execute the playbook to deploy in host nodes. In this lab, we are going to install and use it in a control node and also deploy on 3 host nodes

# TASK 2

* Using Ansible, install these applications on 3 Ubuntu servers - curl, http, nginx, apache.

# Solution

* Update the repository cache by running the command
    - sudo apt update && sudo apt upgrade

* Run the following command to install the latest version of Ansible.
    - sudo apt install ansible -y
    - ansible --version

* Testing Ansible
    - Now that we have Ansible installed, let’s play around to see some basic uses of this software.
      I have three different ubuntu server which we wish to manage using Ansible. In this example, I have created cloud server with username root and password authentication. The IP address assigned to my cloud servers are listed in inventory file

* Generate SSH Key Pair 
    - we can connect to remote hosts using a password through Ansible it is recommended to set up key-based authentication for easy and secure logins.
    - Generate an SSH key pair on my control node  by running the command.
        - ssh-keygen

    - Copy Public Key into Target Server(3 ubuntu servers)
        - ssh-copy-id ubuntu@54.243.8.218

    - login to the server by running the command without asking for a password.
        - ssh ubuntu@54.243.8.218

* Clone this repo to the control node 
    - git clone https://github.com/Damola12345/nautilus-devops.git
    - cd nautilus-devops/week5

* Connect using Ansible
We have done the minimal configuration required to connect to the remote machine using Ansible. Run the following command to ping the host using Ansible ping module.
    - ansible  all --key-file ~/.ssh/id_rsa -i inventory -m ping

* Create a playbook as per the task
    - vi playbook.yml
    - cat playboo.yml

* command to execute the playbook
    - ansible-playbook -i inventory playbook.yml

## Conclusion 
learnt how to install Ansible on ubuntu and also saw how to connect to remote servers using SSH key-based authentication, Ran some simple Ansible command to connect to the servers. 

You can learn more about Ansible from the documentation hosted at [ Ansible Documentation](https://docs.ansible.com/)
