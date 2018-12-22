git whatchanged > git_log_tmp.txt
cat git_log_tmp.txt git_log_pre.txt > git_log.txt 
rm -rf .git
git init
echo -e "*.o\n*.d\ntestcase\ngame/src/nemu-pal/data" > .gitignore

