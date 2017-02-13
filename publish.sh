#! /bin/bash 
basepath=$(cd `dirname $0`; pwd)
cd $basepath
git add .
git commit -am "update"
git push
hexo g
hexo deploy
exit