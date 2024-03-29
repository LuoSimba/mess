
# amend v. 修正，修订
#
# the president agreed to amend the constitution
# and allow multi-party elections.
# 总统同意修订宪法，允许多党选举
git commit --amend


# 将当前目录下的所有文件迁移到子目录。
# 不包括子目录本身。

# 这样写会报错，因为 sub 自身是无法迁移的
git mv * sub
# 这样就能忽略无法迁移的项目
git mv -k * sub



# 以下两个命令的区别
git pull
git fetch

# 根据不同的配置
pull = fetch + merge
# or
pull = fetch + rebase



# 有时候，我们只想查看当前目录有哪些改动
git status .
git status <directory-path>


