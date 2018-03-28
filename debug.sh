#! /bin/bash 
BASEDIR="$( dirname "$0" )"
cd "$BASEDIR"
sleep 2 && open http://localhost:4000/ &
hexo s --draft
exit