#copy html directory to remote machine
scp -i /home/gors/g.rsa.txt -pr /home/gors/GORS/html 192.168.109.151:/home/gors
#copy resolv.conf file to add DNS nameservers, to be moved to /etc/resolv.conf with docker_install script
scp -i /home/gors/g.rsa.txt /home/gors/GORS/config_files/resolv.conf 192.168.109.151:/home/gors
#run script passed as argument in remote
ssh -i /home/gors/g.rsa.txt 192.168.109.151 "bash -s" < $1

#copy logs to control machine
scp -i /home/gors/g.rsa.txt -r 192.168.109.151:/home/gors/browsertime-results /home/gors/GORS/logs 