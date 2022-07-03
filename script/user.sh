#!/bin/bash


# Add Local devops User
sudo adduser ansible --gecos "First Last,RoomNumber,WorkPhone,HomePhone" --disabled-password

#Enable Password Authentication
sudo sed -i 's/PasswordAuthentication no/PasswordAuthentication yes/g' /etc/ssh/sshd_config

#Restart ssh services
sudo service sshd restart

#Add Group to visudoers
echo "%ansible ALL=(ALL) NOPASSWD: ALL" | sudo EDITOR="tee -a" visudo

# sudo cp /home/devops/key/.ssh/. /home/ansible/.ssh/



# # Add Local IAC User
# sudo useradd -m -p $(openssl passwd -1 <india@123>) devops

# # #Enable Password Authentication
# sudo sed -i 's/PasswordAuthentication no/PasswordAuthentication yes/g' /etc/ssh/sshd_config

# # #Restart ssh services
# sudo service sshd restart

# # #Add Group to visudoers
# echo "%devops ALL=(ALL)       NOPASSWD: ALL" | sudo EDITOR="tee -a" visudo