## 写成通用的 Install Role

### Variable

-variable可以让role可以重复复用。
- variable需要被双大括号包裹
- variable可以被playbook传给role

### Loops

with_items:

```yaml
---
- name: Install packages
  apt: name={{ item }} state=present update_cache=true
  sudo: yes
  with_items:
    - openjdk-7-jre
    - tomcat7
```



### 重构

```yaml
# install_packages/tasks/main.yml
---
- name: Install packages
  apt: name={{ item }} state=present update_cache=true
  sudo: yes
  with_items: "{{ packages }}"
```

```yaml
# playbook install.yml
---
- hosts: all

  roles:
   - { role: install_packages, packages: [openjdk-7-jre, tomcat7] }
```
