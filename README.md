# ssh_nopass_all

## 文件说明

- sshkey_mapping.py。存放所有主机的账户和密码用于生成expect文件

## how to use

使用`generate_expect.py`生成expect文件

```shell
python generate_expect.py
```

将`ssh_key.expect`上传到某一台服务器。

复制粘贴`ssh_key.sh`中的命令以使用。

### 清除未成功的结果

使用`ssh_clear.sh`

它会清除每台电脑的`.ssh/authorized_keys`但是留下自己的公钥以便自己进行登录。
