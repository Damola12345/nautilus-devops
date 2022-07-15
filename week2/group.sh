#!/bin/bash

# Create groups from text file

groups=$( cat group.txt )

# Iterate through list of groups and create group accounts
for group in $groups
do
    sudo groupadd $group
done
