---
title: C-输入输出
date: 2022/3/17
categories: C
tags: C
temp_img: https://herozql.oss-cn-beijing.aliyuncs.com/bg_pic/bing_49.jpg
banner_img: https://herozql.oss-cn-beijing.aliyuncs.com/bg_pic/bing_49.jpg
---





## 1. 赋值语句
- C的赋值表达式可以出现在其他表达式能出现的地方，也可以出现在其他表达式之中
```c
if((x = a + b) ! = 0) 
    t = 10;
```
## 2. 数据输出
### 2.1 putchar()单个字符输出函数
- 见书上64页

### 2.2 printf()格式化输出函数
- %md 表示输出十进制整数
- %m.nf 表示输出数据为小数形式
>m为总宽度（包括小数点），n为小数部分位数，小数长度不够补0；当m省略，m等于n

### 2.3 puts() 字符串输出函数
- 见书上67页
- 仅用来输出一字符串，不能输出数值也不能进行格式变换

## 3. 数据输入
### 3.1 getche(), getchar(), getch()
- 见书上68页
- getche() 等待键盘输入一个字符，然后回显那个字符
- getchar() 按回车才结束，尽量不用
- getch() 不显示键入的字符，可用于密码的输入

### 3.2 scanf() 
- 见书上69页
- 在格式控制字符串中的一个空白字符会使scanf()函数在读操作中略去输入流中的一个或多个空白字符
- 一个非空白字符会使scanf()函数在读入时剔除与这个非空白字符相同的字符
>当输入多个数据项时，有两种分隔方式：1.控制字符串格式说明符之间有空白字符或无任何间隔，输入数据必须用空格、制表符或回车来分隔，此时标点符号（如逗号、分号、引号等）不能作为分隔符使用；2.在数据之间使用与控制字符串之间相同的非空白字符（）常用逗号
- 说明符为%c时，空格，制表符和换行符这些数据分隔符也被当作其他单个字符一样被读入
- 在输入字符串时必须以空白字符结束
- 输入实数时不能规定精度

### 3.3 gets() 字符串输入函数
- 见书上71页
- 必须用回车作为输入结束
- 空格。                                         不能结束字符串的输入

