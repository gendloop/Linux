#!/bin/bash
# @brief  WSL一键配置脚本
# @note   运行方式: chmod +x setup.sh; sudo ./setup.sh
# @author gendloop

# 设置颜色输出
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

# 日志文件
LOG_FILE="setup_$(date +%Y%m%d_%H%M%S).log"

# 脚本目录
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# 检查是否以root权限运行
check_root() {
  if [[ $EUID -ne 0 ]]; then
    echo -e "${RED}请以root权限运行此脚本!${NC}"
    echo -e "${YELLOW}Use: sudo ./setup.sh${NC}"
    exit 1
  fi
}

# 打印带颜色的消息
log_message() {
  local type="$1"
  local message="$2"
  case "$type" in
    "info") echo -e "${GREEN}[INFO]${NC} $message" ;;
    "warn") echo -e "${YELLOW}[WARN]${NC} $message" ;;
    "error") echo -e "${RED}[ERROR]${NC} $message" ;;
    *) echo "$message" ;;
  esac
  echo "[$(date '+%Y-%m-%d %H:%M:%S')] [$type] $message" >> "$LOG_FILE"
}
log_info() {
  log_message "info " "$1"
}
log_warning() {
  log_message "warn " "$1"
}
log_error() {
  log_message "error" "$1"
}

# 执行脚本
run_script() {
  local script_name=$1
  local scirpt_path="$SCRIPT_DIR/$script_name"
  if [[ -f "$scirpt_path" ]]; then
    log_info "正在执行脚本: $script_name"
    bash "$scirpt_path" >> "$LOG_FILE" 2>&1
    if [[ $? -eq 0 ]]; then
      log_info "脚本 $script_name 执行成功"
      return 0
    else
      log_error "脚本 $script_name 执行失败，请检查日志"
      return 1
    fi
  else
    log_warning "脚本 $script_name 不存在，跳过"
    return 2
  fi
}
