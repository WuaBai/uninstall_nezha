#!/bin/bash

# 停止服务
sudo systemctl stop nezha-agent.service

# 禁用服务
sudo systemctl disable nezha-agent.service

# 删除服务文件
sudo rm -f /etc/systemd/system/nezha-agent.service

# 重新加载 systemd
sudo systemctl daemon-reload

# 删除相关文件夹
sudo rm -rf /opt/nezha

echo "Nezha agent 服务已被完全删除。"
