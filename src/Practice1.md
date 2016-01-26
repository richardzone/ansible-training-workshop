##  动手实践

大家可以尝试运行下面的命令（在你作业的目录下）

```bash
ansible -i inventory all -m ping --ask-pass
ansible -i inventory apache -m ping --ask-pass
ansible -i inventory all -m setup --ask-pass
```

Note:

inventery文件
```ini
[apache]
192.168.33.10 ansible-ssh-user=vagrant
```
