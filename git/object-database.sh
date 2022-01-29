


git init

# create an empty file
touch a.txt

git hash-object a.txt
# output: e69de29bb2d1d6434b8b29ae775ad8c2e48c5391
# mapping file --> hash

# -w Actually write the object into the object database.
git hash-object -w a.txt
# file stores into .git/objects/e6/9de29bb2d1d6434b8b29ae775ad8c2e48c5391




