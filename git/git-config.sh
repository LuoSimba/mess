

# Config file location
#
#  --global  使用全局的配置文件（在 git 安装目录中）
#  --system  使用系统的配置文件（在当前用户 HOME 目录）
#  --local   使用当前仓库的配置文件
 
# 配置用户信息
git config --global user.name "jim"
git config --global user.email "a@com"

# 提交时如何编辑 msg
git config --global core.editor "/path/to/gvim.exe"

# 正常显示中文
git config --global core.quotepath false

