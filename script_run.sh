#copy html directory to remote machine
scp -i /home/gors/g.rsa.txt -pr /home/gors/GORS_guida/html 192.168.109.151:/home/gors

#run script passed as argument in remote
ssh -i /home/gors/g.rsa.txt "bash -s" < $1

#copy logs to control machine
scp -i /home/gors/g.rsa.txt -r 192.168.109.151:/home/gors/browsertime-results /home/gors/GORS/logs 