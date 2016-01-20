## Setup Module

Ansible有一些预定义的变量，定义了服务器的很多状态信息，可以使用setup动态获取，存储到本地的fact文件中供playbook调用。这里有些栗子。

```bash
# Display facts from all hosts and store them indexed by I(hostname) at C(/tmp/facts).
ansible all -m setup --tree /tmp/facts

# Display only facts regarding memory found by ansible on all hosts and output them.
ansible all -m setup -a 'filter=ansible_*_mb'

# Display only facts returned by facter.
ansible all -m setup -a 'filter=facter_*'

# Display only facts about certain interfaces.
ansible all -m setup -a 'filter=ansible_eth[0-2]'
```