# 基本操作


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



# commit
git commit

