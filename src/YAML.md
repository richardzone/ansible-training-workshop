# YAML

## Ansible Playbook 示例

```
---
-  hosts: all
   vars:
     packages:
       - git
       - build-essentials
   roles:
     - install-common-dependencies
     - setup-nodejs
     - setup-mongodb
     - setup-sharp
     - download-codebase-and-setup-app
     - import-test-data
```

以上 Playbook 所使用的是 YAML 语言。

## YAML 语言介绍

YAML 是一种非常简单的数据描述语言，可以和 JSON 类比。其具有清晰易懂，利于人们阅读的特点。Ansible Playbook 使用 YAML 语言，使得 Ansible 对于非 Deveoper 出身的使用者也比较友好。

YAML 是一种对缩进非常敏感的语言，其中的基本数据类型有两种: Lists and Dictionaries.

```
---
# A list of tasty fruits
fruits:
    - Apple
    - Orange
    - Strawberry
    - Mango
```

```
fruits: ['Apple', 'Orange', 'Strawberry', 'Mango']
```

```
- martin:
    name: Martin D'vloper
    job: Developer
    skill: Elite
```

```
---
employees:
  - martin: {name: Martin D'vloper, job: Developer, skill: Elite}
```

Ansible 中使用 YAML 要注意的一点是：
在 Ansible 中使用 “{{ var }}” 来引用变量时，必须加引号：`foo: "{{ variable }}"`

如有疑问可以参考 Ansible 关于 YAML 的文档: http://docs.ansible.com/ansible/YAMLSyntax.html
