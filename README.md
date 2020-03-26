# CentOS-7 个性化配置脚本

每当新安装一台CentOS服务器，都会有大量的配置工作，这样不仅烦琐，还容易出错，现在整理这个配置脚本，只需要git工具就可以快速5的部署配置。


# 项目结构

> load.sh, 只需要在`/etc/profile.d/`添加该文件，
> 或者在`/etc/profile.d/`添加 load.sh 的软连接：`ln -s /tmp/jie.profile/load.sh  /etc/profile.d/jie.load.sh`，
> 将load.sh的变量`c_path`改成 `${pwd}/profile.d` 即可。

| 文件| 作用|
| :-- | :-- |
|init.sh| 配置PS1、$LANG的初始化|
|git.sh | git分支状态在提示符显示的配置 `[root@localhost jie.profile git:(master)] $`|


# 写在最后

经常使用 linux 开发的同学都知道，配置系统环境是一件烦琐和易出错的事情，所以本项目旨在整理日常使用linux的环境配置。
本项目中的脚本没有测试到的地方，望大家不吝指出，如果您有好的建议，欢迎提交issues，我会及时响应。

如果您在使用中遇到任何问题，请给我发送问题邮件 lijcoder@163.com
