# ssh for all host
# run it on hadoop1.hadoop with ssh_expect in its home path


for i in {1..16}; do 
	echo "cleaning hadoop${i}.hadoop"
	scp ~/.ssh/id_rsa.pub hadoop$i.hadoop:~/.ssh/tmp.pub;
	ssh root@hadoop$i.hadoop "cat ~/.ssh/tmp.pub > ~/.ssh/authorized_keys";
done
