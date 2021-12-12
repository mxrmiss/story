#!/bin/bash

cd /root/notebook
git pull
cd /root/story/blog
git pull
rm -rf source/_posts/
cp /root/notebook/blog/* source/_posts/
hexo clean 
hexo g -d
git add *
git commit -m update_articles
git push
