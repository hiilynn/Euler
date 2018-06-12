git add --all

echo "Input Commit message"
read MSG

git commit -am $MSG

git push
