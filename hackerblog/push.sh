#!/bin/bash
hexo clean
hexo g -d
git add *
git commit -m u
git push
