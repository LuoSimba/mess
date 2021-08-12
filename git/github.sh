
# generate new ssh key
ssh-keygen -t rsa -C "account"

# try login
ssh -T git@github.com

# add key to github.com
cat ~/.ssh/id_rsa.pub


# You can't push to git://github.com/username/*.git
git remote rm origin
git remote add origin git@github.com:username/*.git
git push --set-upstream origin master


# 如果本地要 SSH 登录到远程服务器，需要将本地的

cat ~/.ssh/id_rsa.pub

# 内容写入到远程服务器的

~/.ssh/authorized_keys

# 文件中，这样登录就可以不用再输入密码了
