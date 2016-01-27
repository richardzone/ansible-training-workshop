# Ansible 工作模式

Ansible 的一大优点是其主要工作模式：即使用 SSH 方式连接受控服务器，受控端无需安装 agent / daemon。

这种工作方式叫做 **Push 模式**，即控制端推送配置到受控服务器集群。
