

# 显示远程仓库
git remote -v

git remote show origin

# 添加一个远程仓库
git remote add origin2 "f:/a.git"

# 修改仓库名称 origin --> abc
git remote rename origin abc

# 删除一个远程仓库
git remote rm origin


# 跟踪一个远程分支
git branch --set-upstream-to=origin/master

