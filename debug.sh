#! /bin/bash 
basepath=$(cd `dirname $0`; pwd)
cd $basepath
sleep 2 && open http://localhost:4000/ &
hexo s --draft
exit