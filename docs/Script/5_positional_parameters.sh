#!/bin/bash
#
# @brief  位置参数
# @note   调用一个函数并传给它参数时创建的变量
# @date   2025-11-24
# @author gendloop

# ./5_positional_parameters.sh 1 2 3
echo $0 " " "脚本名称"
echo $1 " " "第1参数列表"
echo $3 " " "第3参数列表"
echo $* " " "除了$0外的所有位置参数"
echo $@ " " "除了$0外的所有位置参数"
