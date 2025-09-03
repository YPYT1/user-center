#!/bin/bash

echo "正在停止用户管理系统..."
echo "========================================="

# 停止前端服务
echo "停止前端服务（端口 3000）..."
if lsof -ti:3000 > /dev/null 2>&1; then
    lsof -ti:3000 | xargs kill -9 2>/dev/null || true
    echo "✅ 前端服务已停止"
else
    echo "ℹ️  前端服务未运行"
fi

# 停止后端服务
echo "停止后端服务（端口 8080）..."
if lsof -ti:8080 > /dev/null 2>&1; then
    lsof -ti:8080 | xargs kill -9 2>/dev/null || true
    echo "✅ 后端服务已停止"
else
    echo "ℹ️  后端服务未运行"
fi

# 清理日志文件
if [ -f "/Users/liam/project/IdeaProject/user-center/User-Manage-back/backend.log" ]; then
    rm -f /Users/liam/project/IdeaProject/user-center/User-Manage-back/backend.log
    echo "✅ 清理日志文件"
fi

echo "========================================="
echo "✅ 所有服务已停止"
echo "========================================" 