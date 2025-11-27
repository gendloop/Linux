#!/bin/bash
#
# @brief  算数扩展
# @note   算数表达式必须在$(())中
# @note   在表达式中, 使用变量时无需带上$前缀
# @date   2025-11-27
# @author gendloop

x=1
y=2
echo $(( x+y ))
echo $(( x++ + ++y ))
echo $(( x+y ))
