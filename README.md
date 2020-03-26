# 一款 CentOS 个性化配置脚本

# 介绍

一款 CentOS 日常开发环境配置脚本，主要面向经常使用 CentOS 开发的朋友。其追求部署简单、容易个性化定制


# 部署

> 声明：${jie.profile.home} 为项目目录的绝对地址

1. load.sh 全局加载文件, 只需要在`/etc/profile.d/`添加该文件，
或者在`/etc/profile.d/`添加 load.sh 的软连接：`ln -s ${jie.profile.home}/load.sh  /etc/profile.d/jie.load.sh`；
2. 修改load.sh的变量`c_path`为`${jie.profile.home}/profile.d`即可加载profile.d中的全部`*.sh`文件；
3. 执行 `source /etc/profile` 加载配置脚本；

# 项目结构

> 实际配置文件都在 **profile.d** 文件夹下

| 文件| 作用|
| :-- | :-- |
|load.sh| 配置加载文件，将该文件让`profile`加载即可，修改其中的`c_path`变量为`${jie.profile.home}/profile.d`的绝对地址|
|init.sh| 配置PS1、$LANG的初始化|
|git.sh | git分支状态在提示符显示的配置 `[root@localhost jie.profile git:(master)] $`|


# 写在最后

经常使用 linux 开发的同学都知道，配置系统环境是一件烦琐和易出错的事情，所以本项目旨在整理日常使用linux的环境配置。  
本项目中的脚本没有测试到的地方，望大家不吝指出，如果您有好的建议，欢迎您提交 issues，我会及时响应。

如果您在使用中遇到任何问题，请给我发送问题邮件 lijcoder@163.com

