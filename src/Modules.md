### Modules

 * Concepts
   - Ansible中实际执行的命令，可以理解为与OS命令一一对应的模块，如apt-get对应apt,wget对应get_url
   - 分为Core Modules和Custom Modules
 * Command Module
   - value是一段可直接在受控资源上执行的命令，如: command: ps -ef|grep tomcat7
 * File Module
   - 用于文件操作的Module
 * Apt Module
   - 对应于apt-get，用于安装软件的Module
