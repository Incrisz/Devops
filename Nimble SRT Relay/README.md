[NOTE: THIS IS MEANT FOR UBUNTU 20.04 ONLY]


1:	nano /etc/apt/sources.list

Paste this text:

2:	deb http://nimblestreamer.com/ubuntu focal/

Back to commands:

3:	wget -q -O - http://nimblestreamer.com/gpg.key | sudo apt-key add -

4:	sudo apt-get update

5:	sudo apt-get install nimble

6:	sudo apt-get install nimble-srt

7:	nano /etc/nimble/nimble.conf

Paste this text:

8:	srt_multipoint_listener_enabled = true

Back to commands:

9:	sudo service nimble restart

10:	sudo /usr/bin/nimble_regutil

11:	reboot




12:	sudo ufw allow 44401:44420/udp

13:	sudo ufw allow 55501:55520/udp\


# https://docs.google.com/spreadsheets/d/1qXVGTwD0rPbaf8wafZ8OG3RTg1AaR916ojTyjU4Y57A/edit#gid=0
