#!/bin/bash
#
# @brief  环境变量, 使用export创建
# @note   对当前shell会话内所有的程序或脚本都可见
# @date   2025-11-24
# @author gendloop

export GLOBAL_VAR="this is a global variable"
echo $HOME   " " "当前用户的用户目录"
echo $PATH   " " "分号分隔"
echo $PWD    " " "当前工作目录"
echo $RANDOM " " "0到32767(2^15-1)之间的随机整数"
echo $UID    " " "当前用户ID"

