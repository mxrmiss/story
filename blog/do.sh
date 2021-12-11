#!/bin/bash
cd ~/story/blog
git pull
hexo clean
hexo g -d
