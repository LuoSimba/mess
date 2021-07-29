# 基本操作


# 在当前目录下建立新的版本库
git init


# 查看当前状态
git status


# add to index
git add abc.txt

# rename a tracked file
git mv old-file new-file

# delete a file from repo
git rm abc.txt

# untrack a file, but still keep in working directory
git rm --cached abc.txt



# working directory <==> index
git diff

# index <==> last commit
git diff --staged
# or:
git diff --cached



# 提交更改
git commit
git commit -m "some message"



# ---------------------------------
# 分支管理
# ---------------------------------

# 列出本地分支
git branch 
# 列出所有分支
git branch -a
# 列出远程分支
git branch -r
# 列出已经合并了的分支
git branch --merged

# 基于当前分支创建新分支
git branch <branchname>

# 检出分支
git checkout <branchname>

