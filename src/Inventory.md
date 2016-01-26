# Inventory

## 简介

Inventory文件用来指定受控资源列表

## 内容
   * Machines
   * Groups
   * Group of Groups

```
[webserver]
example.com

[appserver]
192.168.33.11

[ap-south-1a]
 webserver
 appserver

```

## 使用方式
* 全局
* 通过ansible.cfg 配置
* Command Line 指定
