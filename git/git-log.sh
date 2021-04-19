
# 查看提交历史
#
# 按时间的先后顺序列出所有的提交
git log

# 只想查看最近的 5 次提交
git log -5

# 查看相较与前一版本的变化
git log --patch

# 查看简略统计信息（改动了哪些文件）
git log --stat

# 一行显示一次提交
git log --pretty=oneline

# --pretty=short
# --pretty=full
# --pretty=fuller

# 字符图形展示
git log --graph



# 搜索改动中包含的字符串
git log -S hello


# 列出当前目录下的提交
git log -- .
# 列出 src 目录下的提交
git log -- src


# 组合使用
git log --graph --pretty=oneline

# 相当于: --pretty=oneline --abbrev-commit
git log --oneline

