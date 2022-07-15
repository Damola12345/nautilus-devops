#!/bin/bash

# groups array
groups=('group1' 'group2' 'group3')

# user for each group
group1='user1 user2 user3 user4 user5'
group2='user6 user7 user8 user9 user10'
group3='user11 user12 user13 user14 user15'

for gp in ${groups[@]}; do
# get the users array
    users=${!gp}

    for user in ${users[@]}; do
        echo "$gp => $user"
        sudo useradd -U -G $gp $user
    done
done

