# create a new item
# select the freestyle project
# under General look for source code mgt select git then enter github url
https://github.com/Incrisz/portfolio-template.git
# select github hook trigger then apply

# goto the github and create webhook 
http://13.245.255.219:8080/github-webhook/
# content type
# application/ json
# select individual event then select pull requests

# in the server terminal
sudo groupadd www-data

# add user jenkins to group
sudo usermod -aG www-data jenkins

sudo newgrp www-data
# test
sudo chown jenkins:www-data html
sudo chmod -R 2771 html


