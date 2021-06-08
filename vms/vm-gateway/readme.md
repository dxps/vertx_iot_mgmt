### Issues

'gateway' multipass instance does not have access to Internet.

Trying 'multipass networks' fails since, by default multipass' `local.driver=qemu`.

Followed [this thread](https://discourse.ubuntu.com/t/multipass-networks-command/19542/14) and commented on it, since the issue persists.

```shell
$ sudo snap install lxd

$ sudo lxd init
Would you like to use LXD clustering? (yes/no) [default=no]: 
Do you want to configure a new storage pool? (yes/no) [default=yes]: no
Would you like to connect to a MAAS server? (yes/no) [default=no]: 
Would you like to create a new local network bridge? (yes/no) [default=yes]: 
What should the new bridge be called? [default=lxdbr0]: 
What IPv4 address should be used? (CIDR subnet notation, “auto” or “none”) [default=auto]: 
What IPv6 address should be used? (CIDR subnet notation, “auto” or “none”) [default=auto]: 
Would you like the LXD server to be available over the network? (yes/no) [default=no]: 
Would you like stale cached images to be updated automatically? (yes/no) [default=yes] 
Would you like a YAML "lxd init" preseed to be printed? (yes/no) [default=no]: 

$ 
```

Then did:
```shell
$ sudo multipass set local.driver=lxd

$ sudo snap connect multipass:lxd lxd
```

Whether when `multipass launch`-ing the VM with `--network` flag, or just `multipass networks`, it fails with: `LXD object not found`.


