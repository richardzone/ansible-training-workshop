## 重构：使用Role安装Package

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
