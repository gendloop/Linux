#!/bin/bash
#
# @brief  大括号扩展 {start..end..increment}
# @note   1. 生成多个字符串
#         2. 创建可循环迭代的区间
# @date   2025-11-25
# @author gendloop

strs=$(echo beg{i,a,u}n)
echo $strs

itvs=$(echo {0..9})
echo $itvs

itvs2=$(echo {00..09..3}) 
echo $itvs2

