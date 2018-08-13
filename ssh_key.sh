# ssh for all host
# run it on hadoop1.hadoop with ssh_expect in its home path


expect ssh_key.expect

for i in {2..16}; do 
	scp ~/ssh_key.expect root@hadoop$i.hadoop:/root/ssh.expect 
	ssh root@hadoop$i.hadoop "yum install -y expect; expect /root/ssh.expect; rm -rf /root/ssh.expect"
done
