#!/bin/bash
#
# @brief  文件名 & 函数名 & 变量名写法
# @note   使用小写字母, 用下划线分隔
# @author gendloop

# 函数
my_func() {
  local name="gendloop"
  echo "Hello, everyone!, I'm $name"
}

# 调用函数
my_func

# 变量
x=1
