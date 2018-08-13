# generate expect file with python

from sshkey_mapping import pass_mapping

with open("ssh_key.expect.base") as fp:
	content = fp.read()
	
with open("ssh_key.expect", 'w') as fw:
	for key in pass_mapping:
		print(key, pass_mapping[key])
		fw.write(content.replace("{host_name}", key).replace("{host_pass}", pass_mapping[key]))
