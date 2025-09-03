#!/bin/bash

echo "正在启动用户管理系统..."
echo "========================================="

# 启动后端服务（后台运行）
echo "1. 启动后端服务..."
cd /Users/liam/project/IdeaProject/user-center/User-Manage-back

# 检查并停止现有后端服务
if lsof -ti:8080 > /dev/null 2>&1; then
    echo "停止现有后端服务..."
    lsof -ti:8080 | xargs kill -9 2>/dev/null || true
    sleep 3
fi

# 后台启动后端
echo "启动后端服务（端口 8080）..."
nohup mvn spring-boot:run > backend.log 2>&1 &
BACKEND_PID=$!

echo "等待后端服务启动..."
sleep 15

# 启动前端服务
echo "2. 启动前端服务..."
cd /Users/liam/project/IdeaProject/user-center/user-center-frontend-vue

# 检查并停止现有前端服务
if lsof -ti:3000 > /dev/null 2>&1; then
    echo "停止现有前端服务..."
    lsof -ti:3000 | xargs kill -9 2>/dev/null || true
    sleep 2
fi

echo "启动前端服务（端口 3000）..."
npm run serve &
FRONTEND_PID=$!

echo "========================================="
echo "✅ 系统启动完成！"
echo "前端地址: http://localhost:3000"
echo "后端地址: http://localhost:8080/api"
echo "========================================="
echo "管理员账号: admin"
echo "管理员密码: 12345678"
echo "========================================="
echo "后端 PID: $BACKEND_PID"
echo "前端 PID: $FRONTEND_PID"
echo ""
echo "停止服务请运行: ./stop-all.sh" 