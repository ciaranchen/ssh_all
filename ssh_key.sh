# /bin/bash
# run it on a host that you can input password

for i in {1..16}; do 
	echo "now dealing: hadoop${i}.hadoop"
	scp ~/ssh_key.expect root@hadoop$i.hadoop:/root/ssh.expect 
	ssh root@hadoop$i.hadoop "yum install -y expect; expect /root/ssh.expect;"
done
