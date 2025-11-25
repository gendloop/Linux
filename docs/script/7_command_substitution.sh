#!/bin/bash
#
# @brief  命令置换
# @note   实现方式: 用一组``或$()包裹命令
# @date   2025-11-25
# @author gendloop

strs=($(echo beg{i,a,u}n))
echo ${strs[@]}

itvs=(`echo {0..9..3}`)
echo ${itvs[*]}

now=$(date +%T)
echo $now
