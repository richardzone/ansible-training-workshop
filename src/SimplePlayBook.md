## 书写一个简单的Playbook

### 简单的Playbook展示

```yaml
---
- hosts: all
  tasks：
    - name: git
    - git: repo=ssh://git@github.com/mylogin/hello.git dest=/home/mylogin/hello
```


### 目标

使用Playbook完成动手实践目标。
