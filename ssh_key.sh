# ssh for all host
# run it on hadoop1.hadoop with ssh_expect in its home path


for i in {1..16}; do 
	echo "now dealing: hadoop${i}.hadoop"
	scp ~/ssh_key.expect root@hadoop$i.hadoop:/root/ssh.expect 
	ssh root@hadoop$i.hadoop "yum install -y expect; expect /root/ssh.expect;"
done
