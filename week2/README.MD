## Assessment

* The exercises should be done in a Linux Instance (Cloud, Local or VirtualBox)
- 1. Users and Group Permissions
    - a. Create 3 groups and 15 users
    - b. Assign the 15 users across the 3 groups
    - c. Demonstrate that user(s) in a group cannot access files/folders that belong to another group unless they are added to that group
- 2. Using bash, write a script that searches through the /var/log directory and filters out the word “packets” from an Ubuntu instance.

# SOLUTION 
* Q1. Run the below command for (a & b)
    - chmod +x assign.sh
    - ./assign.sh
    

* Q2. Run the below command
    - chmod +x search.sh
    - ./search.sh