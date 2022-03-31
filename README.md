# autoInstallCentOS
Auto Install Package for Install OSSEC on CentOS

Created on 26/03/2022 by Dao Thien Thien Luan



You can set password-less authentication then you can just use this script

Step1: Generate a new SSH key pair.

        ssh-keygen -t rsa -b 4096 -C "your_email@domain.com"
    
Press Enter to accept the default file location and file name:
    
If you don’t want to use a passphrase just press Enter
    
Step2: Copy the public key

    ssh-copy-id remote_username@server_ip_address

If by some reason the ssh-copy-id utility is not available on your local computer you can use the following command to copy the public key:

    cat ~/.ssh/id_rsa.pub | ssh remote_username@server_ip_address "mkdir 
    
Step3: Login to your server using SSH keys

    ssh remote_username@server_ip_address
    
Create a file with all the IPs you are interested in and their respective username, one per line (ex: serverlist.txt)

    <USERNAME><IP ADDRESS>
    luandtt@192.168.123.233
    user02@192.168.123.234
    
    
    
