#!/bin/bash

cd /root/story/blog
echo y | cp _config.yml /root/story/ackup/_config.yml.butterfly
echo copied _confi.yml in blog
echo y | cp _config.butterfly.yml /root/story/ackup/
echo copied _config.butterfly.yml

cd /root/story/life
echo y | cp _config.yml /root/story/ackup/_config.yml.fluid
echo copied _config_yml in life
echo y | cp _config.fluid.yml /root/story/ackup/
echo copied _config.fluid.yml

cd /root/story
echo y | cp blog_daily* /root/story/ackup/
echo copied blog_daily_error.log and blog_daily.blog

cd ~
echo y | cp cp_config.sh /root/story/ackup/
echo copied cp_config.sh
echo y | cp blog_daily.sh /root/story/ackup/
echo copied blog_daily.sh
