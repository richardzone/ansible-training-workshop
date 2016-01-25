# Playbooks, Roles & Tasks

- 在 Ansible 中，最终被执行的自动化脚本叫做 **Playbook**。
- 通常 Playbook 中会使用多个 **Role** 来完成整个自动化任务，Role 是 Ansible 代码复用的基本单位，它能够完整地实现一个独立任务
- Role 里面会包含很多 **Task**，每个 Task 是 Ansible 的最小执行单元

## Ansible Project 简单的目录结构

```
.
├── ansible.cfg
├── setup_tomcat.yml
├── inventory
└── roles
    ├── configure_tomcat
    │   ├── defaults
    │   ├── handlers
    │   ├── tasks
    │   │   └── main.yml
    │   └── templates
    │       └── server.xml.j2
    └── deploy_war
        ├── defaults
        ├── files
        ├── handlers
        └── tasks
            └── main.yml
```



