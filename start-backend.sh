#!/bin/bash

echo "正在启动后端服务..."
echo "========================================="

# 切换到后端目录
cd /Users/liam/project/IdeaProject/user-center/User-Manage-back

# 检查是否有现有的后端服务在运行
if lsof -ti:8080 > /dev/null 2>&1; then
    echo "端口 8080 已被占用，正在停止现有服务..."
    lsof -ti:8080 | xargs kill -9 2>/dev/null || true
    sleep 3
fi

# 启动后端服务
echo "启动后端 Spring Boot 服务器（端口 8080）..."
mvn spring-boot:run

echo "后端服务启动完成！"
echo "API 地址: http://localhost:8080/api" 