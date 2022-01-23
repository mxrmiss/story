#!/bin/bash
# 该脚本的是调用博客文件夹中 hexo.sh
# hexo.sh 的作用是发布博客
# 该脚本位于/etc/cron.daily目录，作用是每天更新博客,每周末清除日志内容，包括错误和正确的日志

echo "loading..."

if [ $(date +%u) -eq 7 ]
then
    echo "" > /root/story/blog_daily.log
    echo "" > /root/story/blog_daily_error.log	
fi

exec 2>>/root/story/blog_daily_error.log
echo "=============****错误日志****===============" >&2 
date >&2; echo "" >&2

exec 3>&1
exec 1>>/root/story/blog_daily.log
echo "=============*****运行日志*****================"
date;echo ""


cd /root/story
git pull
cd /root/story/blog
hexo clean
hexo g -d
cd /www/wwwroot/oldstory.cn/public/

for i in `ls -a`
do 
    if [ $i != .user.ini ] && [ $i != . ] && [ $i != .. ];then
        rm -rf $i
    fi
done

cp -r /root/story/blog/public/* ./


cd /root/story/life
hexo clean
hexo g -d
cd /www/wwwroot/life.oldstory.cn/public/

for i in `ls -a`
do 
    if [ $i != .user.ini ] && [ $i != . ] && [ $i != .. ];then
        rm -rf $i
    fi
done

cp -r /root/story/life/public/* ./
exec 1>&3
echo "loading successfully!"