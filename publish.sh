#! /bin/bash 
BASEDIR="$( dirname "$0" )"
cd "$BASEDIR"
git add .
git commit -am "update"
git push
hexo g
hexo deploy
exit