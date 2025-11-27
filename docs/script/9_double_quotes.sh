#!/bin/bash
#
# @brief  双引号使用
# @note   当变量中包含空格时, 注意加上双引号
# @date   2025-11-27
# @author gendloop

fruits=" Apple  Pear    Peach"
echo $fruits # 会被分成单独的词
echo "$fruits"
