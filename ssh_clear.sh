#! /bin/bash
# run it on a host that you can input password

for i in {1..16}; do 
	echo "cleaning hadoop${i}.hadoop"
	scp ~/.ssh/id_rsa.pub hadoop$i.hadoop:~/.ssh/tmp.pub;
	ssh root@hadoop$i.hadoop "cat ~/.ssh/tmp.pub > ~/.ssh/authorized_keys";
done
