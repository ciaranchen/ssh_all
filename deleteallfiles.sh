#! /bin/bash
# This is a test shell file for this project.

for i in {1..16}; do
	# do some thing
	ssh root@hadoop$i.hadoop "rm -rf /root/ssh_key.expect"
done