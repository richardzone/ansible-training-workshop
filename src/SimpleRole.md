## 重构：使用Role安装Package

如果一个Playbook需要执行很多task，Playbook会变得非常庞大，而且其中的代码非常难以复用，这里就可以引入Role来帮助我们抽出task封装起来。

### Role 示例

```yaml
# playbook.xml
---
- hosts: all
  roles:
    install_java
```

```yaml
# install_java/task/main.yml
---
- name: install java
  apt: name=java state=present update_cache=true
  sudo: yes
```
