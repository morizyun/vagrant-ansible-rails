#!/bin/bash -eu
[ -z "`vagrant status | grep running`" ] && vagrant up

rm -rf ./.tmp && mkdir ./.tmp

vagrant ssh -- cat .ssh/authorized_keys > ./.tmp/authorized_keys

[ `cat authorized_keys | wc -l` == 2 ] && exit 1

ssh-keygen -y -f $HOME/.ssh/id_rsa >> ./.tmp/authorized_keys

vagrant ssh-config > ./.tmp/ssh_config

scp -F ./.tmp/ssh_config ./.tmp/authorized_keys default:.ssh/authorized_keys

cat <<_EOF_
------------------------------
$ cat $HOME/.ssh/config
Host vagrant
  HostName 192.168.33.10
  User vagrant
------------------------------
_EOF_