#!/bin/bash
#
# @brief    变量
# @note     - 变量赋值时, 等号两边不加空格
#           - 字符串总是用双引号括起来
# @author   gendloop

# 函数内用局部变量(local 修饰)
my_func() {
  local count=2
  local fruit="apple"
  local str="$fruit number = $count"
  echo $str
}
my_func
