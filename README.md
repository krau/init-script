# init-script

## 系统

Debian x64

## 使用

在创建主机时,选择初始化脚本为 `init-script.sh` 的内容.

若已经创建好主机,可以使用以下命令执行初始化脚本:

```bash
wget -qO- https://raw.githubusercontent.com/krau/init-script/main/init-script.sh | bash
```

## 功能

- 安装常用软件: `wget curl unzip git nano tmux htop vnstat`
- 安装 Docker 和 Docker Compose
- 替换默认终端为 zsh
