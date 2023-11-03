apt update

# Install Java. Jenkins requires Java 11 or higher to run. You can install Java on Ubuntu using the following command:
sudo apt install openjdk-11-jre

# to find installtion cmds for your different OS https://pkg.jenkins.io/

# for debain 
https://pkg.jenkins.io/debian/

# This is the Debian package repository of Jenkins to automate installation and upgrade. To use this repository, first add the key to your system (for the Weekly Release Line):
  sudo wget -O /usr/share/keyrings/jenkins-keyring.asc \
    https://pkg.jenkins.io/debian/jenkins.io-2023.key

# Then add a Jenkins apt repository entry:
  echo deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc] \
    https://pkg.jenkins.io/debian binary/ | sudo tee \
    /etc/apt/sources.list.d/jenkins.list > /dev/null

# Update your local package index, then finally install Jenkins:

sudo apt-get update
sudo apt-get install fontconfig openjdk-17-jre
sudo apt-get install jenkins -y
  
# to start
sudo systemctl start jenkins

sudo systemctl enable jenkins

# Configure the firewall. Jenkins listens on port 8080 by default. If you are using a firewall, you need to open port 8080 to allow Jenkins traffic. You can do this with the following command:
sudo ufw allow 8080

# to view Admin password
sudo cat /var/lib/jenkins/secrets/initialAdminPassword

# The apt packages were signed using this key:
# pub   rsa4096 2023-03-27 [SC] [expires: 2026-03-26]
#       63667EE74BBA1F0A08A698725BA31D57EF5975CA
# uid                      Jenkins Project 
# sub   rsa4096 2023-03-27 [E] [expires: 2026-03-26]
