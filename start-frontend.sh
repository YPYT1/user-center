#!/bin/bash

echo "正在启动前端服务..."
echo "========================================="

# 切换到前端目录
cd /Users/liam/project/IdeaProject/user-center/user-center-frontend-vue

# 检查是否有现有的前端服务在运行
if lsof -ti:3000 > /dev/null 2>&1; then
    echo "端口 3000 已被占用，正在停止现有服务..."
    lsof -ti:3000 | xargs kill -9 2>/dev/null || true
    sleep 2
fi

# 启动前端服务
echo "启动前端开发服务器（端口 3000）..."
npm run serve

echo "前端服务启动完成！"
echo "访问地址: http://localhost:3000" 