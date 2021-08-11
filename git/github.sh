
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


