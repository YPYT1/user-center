# 🚀 User-Center - 企业级用户管理系统

<div align="center">

[![Java](https://img.shields.io/badge/Java-17%2B-orange.svg)](https://www.oracle.com/java/)
[![Spring Boot](https://img.shields.io/badge/Spring%20Boot-3.x-brightgreen.svg)](https://spring.io/projects/spring-boot)
[![Vue.js](https://img.shields.io/badge/Vue.js-3.x-brightgreen.svg)](https://vuejs.org/)
[![MySQL](https://img.shields.io/badge/MySQL-8.0-blue.svg)](https://www.mysql.com/)
[![Redis](https://img.shields.io/badge/Redis-7.x-red.svg)](https://redis.io/)
[![Docker](https://img.shields.io/badge/Docker-ready-blue.svg)](https://www.docker.com/)

**🏆 基于微服务架构的高性能用户权限管理系统**

[📖 项目文档](#-项目文档) | [🛠️ 技术栈](#-技术栈) | [🚀 快速开始](#-快速开始) | [📊 系统架构](#-系统架构) | [🔧 部署指南](#-部署指南)

</div>

## 📋 项目简介

User-Center是一个企业级的用户权限管理系统，采用前后端分离架构，基于Spring Boot 3.x和Vue 3.x构建。系统提供了完整的用户管理、角色权限控制、部门管理、菜单管理等核心功能，支持多租户、数据权限、操作日志等企业级特性。

### 🎯 核心特性

- **🔐 完善的权限体系**: 基于RBAC模型的权限控制，支持菜单权限、按钮权限、数据权限
- **👥 多租户架构**: 支持SaaS模式，数据隔离安全可靠
- **📊 实时监控**: 集成Spring Boot Admin，实时监控系统运行状态
- **🔍 操作审计**: 完整的操作日志记录，支持敏感操作追踪
- **📱 响应式设计**: 支持PC、平板、手机等多设备访问
- **🚀 高性能**: 基于Redis的缓存策略，支持分布式部署
- **🔒 安全防护**: JWT认证、防CSRF攻击、SQL注入防护、XSS防护

## 🛠️ 技术栈

### 后端技术栈
| 技术 | 版本 | 说明 |
|------|------|------|
| **Spring Boot** | 3.2.x | 核心框架 |
| **Spring Security** | 6.x | 安全框架 |
| **MyBatis Plus** | 3.5.x | ORM框架 |
| **MySQL** | 8.0.x | 主数据库 |
| **Redis** | 7.x | 缓存 & 会话存储 |
| **Knife4j** | 4.x | API文档 |
| **Hibernate Validator** | 8.x | 参数校验 |
| **Logback** | 1.4.x | 日志框架 |
| **Maven** | 3.9.x | 项目构建 |

### 前端技术栈
| 技术 | 版本 | 说明 |
|------|------|------|
| **Vue.js** | 3.3.x | 渐进式JavaScript框架 |
| **Vue Router** | 4.2.x | 路由管理 |
| **Pinia** | 2.1.x | 状态管理 |
| **Element Plus** | 2.3.x | UI组件库 |
| **Axios** | 1.5.x | HTTP客户端 |
| **Vite** | 4.4.x | 构建工具 |
| **TypeScript** | 5.x | 类型安全的JavaScript |
| **ECharts** | 5.4.x | 图表库 |

### 部署与运维
| 技术 | 说明 |
|------|------|
| **Docker** | 容器化部署 |
| **Docker Compose** | 多容器编排 |
| **Nginx** | 反向代理 & 负载均衡 |
| **Jenkins** | CI/CD自动化部署 |
| **Prometheus** | 监控指标收集 |
| **Grafana** | 监控可视化 |

## 📊 系统架构

### 🏗️ 架构图
```
┌─────────────────────────────────────────────────────────────┐
│                        前端层                                │
├─────────────────────────────────────────────────────────────┤
│  Vue3 + Element Plus + Vite + TypeScript                    │
│  ├─ 响应式布局 (PC/平板/手机)                               │
│  ├─ 组件化开发                                             │
│  └─ 国际化支持 (i18n)                                      │
├─────────────────────────────────────────────────────────────┤
│                      网关层                                  │
├─────────────────────────────────────────────────────────────┤
│  Nginx (反向代理 + 负载均衡)                                │
│  ├─ HTTPS/SSL终端                                           │
│  ├─ 静态资源缓存                                            │
│  └─ 限流 & 熔断                                             │
├─────────────────────────────────────────────────────────────┤
│                      应用层                                  │
├─────────────────────────────────────────────────────────────┤
│  Spring Boot 3.x 微服务                                    │
│  ├─ 用户服务 (User Service)                                │
│  ├─ 权限服务 (Auth Service)                                │
│  ├─ 系统服务 (System Service)                              │
│  └─ 文件服务 (File Service)                                │
├─────────────────────────────────────────────────────────────┤
│                      数据层                                  │
├─────────────────────────────────────────────────────────────┤
│  MySQL 8.0 (主从复制)                                      │
│  Redis 7.x (缓存 + 会话)                                   │
│  MinIO (对象存储)                                          │
└─────────────────────────────────────────────────────────────┘
```

### 🔐 权限模型
```
用户 (User) ─┬─ 角色 (Role) ─┬─ 菜单 (Menu)
             │               └─ 按钮 (Button)
             └─ 部门 (Dept) ─┬─ 数据权限 (Data Scope)
                             └─ 操作权限 (Operation)
```

## 🚀 快速开始

### 📋 环境要求

- **Java**: 17 或更高版本
- **Node.js**: 16.x 或更高版本
- **MySQL**: 8.0 或更高版本
- **Redis**: 7.x 或更高版本
- **Maven**: 3.9.x 或更高版本

### 🔧 本地开发环境搭建

#### 1. 克隆项目
```bash
git clone https://github.com/YPYT1/user-center.git
cd user-center
```

#### 2. 数据库初始化
```bash
# 创建数据库
mysql -u root -p < User-Manage-back/sql/init.sql

# 导入基础数据
mysql -u root -p user_center < User-Manage-back/sql/data.sql
```

#### 3. 后端配置
```bash
# 进入后端目录
cd User-Manage-back

# 修改配置文件 src/main/resources/application-dev.yml
spring:
  datasource:
    url: jdbc:mysql://localhost:3306/user_center?useUnicode=true&characterEncoding=utf8&zeroDateTimeBehavior=convertToNull&useSSL=true&serverTimezone=GMT%2B8
    username: your_username
    password: your_password
  
  redis:
    host: localhost
    port: 6379
    password: your_redis_password

# 安装依赖并启动
mvn clean install
mvn spring-boot:run
```

#### 4. 前端配置
```bash
# 进入前端目录
cd user-center-frontend-vue

# 安装依赖
npm install

# 启动开发服务器
npm run serve
```

#### 5. 一键启动（推荐）
```bash
# 赋予执行权限
chmod +x start-all.sh
chmod +x stop-all.sh

# 启动所有服务
./start-all.sh

# 停止所有服务
./stop-all.sh
```

### 🌐 访问系统
- **前端地址**: http://localhost:3000
- **后端地址**: http://localhost:8080/api
- **API文档**: http://localhost:8080/doc.html

### 👤 默认账号
- **管理员账号**: admin
- **管理员密码**: 12345678

## 📁 项目结构

```
user-center/
├── user-center-frontend-vue/          # 前端项目
│   ├── src/
│   │   ├── api/                       # API接口
│   │   ├── assets/                    # 静态资源
│   │   ├── components/                # 公共组件
│   │   ├── router/                    # 路由配置
│   │   ├── store/                     # 状态管理
│   │   ├── utils/                     # 工具函数
│   │   └── views/                     # 页面组件
│   ├── package.json
│   └── vite.config.js
│
├── User-Manage-back/                  # 后端项目
│   ├── src/main/java/com/usercenter/
│   │   ├── config/                    # 配置类
│   │   ├── controller/                # 控制器
│   │   ├── service/                   # 业务逻辑
│   │   ├── mapper/                    # 数据访问层
│   │   ├── entity/                    # 实体类
│   │   ├── security/                  # 安全配置
│   │   └── utils/                     # 工具类
│   ├── src/main/resources/
│   │   ├── application.yml            # 主配置文件
│   │   ├── application-dev.yml        # 开发环境配置
│   │   ├── application-prod.yml       # 生产环境配置
│   │   └── mapper/                    # MyBatis映射文件
│   └── pom.xml
│
├── sql/                               # 数据库脚本
├── docker/                            # Docker配置
├── docs/                              # 项目文档
└── scripts/                           # 部署脚本
```

## 🔧 核心功能详解

### 1. 用户管理模块
- **用户CRUD**: 完整的增删改查功能
- **批量操作**: 支持批量导入/导出用户
- **状态管理**: 启用/禁用用户账号
- **密码策略**: 强密码策略，支持密码过期提醒
- **登录审计**: 记录用户登录时间、IP、设备信息

### 2. 角色权限管理
- **RBAC模型**: 基于角色的访问控制
- **权限继承**: 角色权限继承机制
- **动态权限**: 运行时权限变更无需重启
- **权限缓存**: Redis缓存权限数据，提升性能

### 3. 部门管理
- **树形结构**: 支持无限层级部门结构
- **数据权限**: 基于部门的数据访问控制
- **部门负责人**: 设置部门负责人和副负责人
- **部门迁移**: 支持部门结构调整

### 4. 菜单管理
- **动态路由**: 基于权限的动态菜单生成
- **菜单图标**: 支持Element Plus图标库
- **菜单排序**: 拖拽式菜单排序
- **外链支持**: 支持外部链接菜单

### 5. 系统监控
- **在线用户**: 实时监控在线用户状态
- **操作日志**: 完整的操作审计日志
- **异常监控**: 全局异常处理和记录
- **性能监控**: 接口响应时间监控

## 🐳 Docker部署

### 1. 构建镜像
```bash
# 构建后端镜像
cd User-Manage-back
docker build -t user-center-backend:latest .

# 构建前端镜像
cd ../user-center-frontend-vue
docker build -t user-center-frontend:latest .
```

### 2. Docker Compose部署
```bash
# 启动所有服务
docker-compose up -d

# 查看服务状态
docker-compose ps

# 查看日志
docker-compose logs -f

# 停止服务
docker-compose down
```

## 📊 性能优化

### 1. 数据库优化
- **索引优化**: 关键字段建立复合索引
- **查询优化**: MyBatis Plus分页查询
- **连接池**: HikariCP高性能连接池
- **读写分离**: 支持主从数据库配置

### 2. 缓存策略
- **Redis缓存**: 用户权限、字典数据缓存
- **本地缓存**: Caffeine本地缓存加速
- **缓存穿透**: 布隆过滤器防止缓存穿透
- **缓存雪崩**: 缓存过期时间随机化

### 3. 前端优化
- **代码分割**: 路由级别的代码分割
- **懒加载**: 组件和路由的懒加载
- **CDN加速**: 静态资源CDN部署
- **Gzip压缩**: 启用Gzip压缩传输

## 🔒 安全特性

### 1. 认证授权
- **JWT认证**: 无状态JWT Token认证
- **Token刷新**: 自动Token刷新机制
- **权限验证**: 方法级别的权限注解
- **会话管理**: Redis集中式会话管理

### 2. 安全防护
- **XSS防护**: 输入内容XSS过滤
- **CSRF防护**: 跨站请求伪造防护
- **SQL注入**: MyBatis Plus防SQL注入
- **敏感数据**: 敏感信息脱敏处理

### 3. 审计追踪
- **操作日志**: 完整的操作审计记录
- **登录日志**: 用户登录行为追踪
- **异常日志**: 系统异常详细记录
- **数据变更**: 数据变更历史追踪

## 🧪 测试策略

### 1. 单元测试
```bash
# 后端单元测试
cd User-Manage-back
mvn test

# 前端单元测试
cd user-center-frontend-vue
npm run test:unit
```

### 2. 集成测试
```bash
# API接口测试
mvn test -Dtest.profile=integration

# 端到端测试
npm run test:e2e
```

### 3. 性能测试
- **JMeter**: 接口性能压测
- **LoadRunner**: 系统负载测试
- **前端性能**: Lighthouse性能评分

## 📈 监控与运维

### 1. 应用监控
- **Spring Boot Admin**: 应用健康监控
- **Micrometer**: 应用指标收集
- **Prometheus**: 指标存储和查询
- **Grafana**: 监控数据可视化

### 2. 日志管理
- **ELK Stack**: Elasticsearch + Logstash + Kibana
- **日志级别**: 动态调整日志级别
- **日志归档**: 自动日志切割和归档
- **错误告警**: 实时错误告警通知

### 3. 健康检查
```bash
# 健康检查端点
curl http://localhost:8080/actuator/health

# 详细信息
curl http://localhost:8080/actuator/info
```

## 🔄 CI/CD流程

### 1. Jenkins Pipeline
```groovy
pipeline {
    agent any
    
    stages {
        stage('拉取代码') {
            steps {
                git 'https://github.com/YPYT1/user-center.git'
            }
        }
        
        stage('构建后端') {
            steps {
                dir('User-Manage-back') {
                    sh 'mvn clean package -DskipTests'
                }
            }
        }
        
        stage('构建前端') {
            steps {
                dir('user-center-frontend-vue') {
                    sh 'npm install && npm run build'
                }
            }
        }
        
        stage('部署') {
            steps {
                sh 'docker-compose up -d --build'
            }
        }
    }
}
```

### 2. GitHub Actions
```yaml
name: Build and Deploy
on:
  push:
    branches: [ main ]
  pull_request:
    branches: [ main ]

jobs:
  build:
    runs-on: ubuntu-latest
    steps:
    - uses: actions/checkout@v3
    - name: Set up JDK 17
      uses: actions/setup-java@v3
      with:
        java-version: '17'
        distribution: 'temurin'
    - name: Build with Maven
      run: mvn clean package
```

## 📚 API文档

### 1. 在线文档
- **Swagger UI**: http://localhost:8080/swagger-ui.html
- **Knife4j**: http://localhost:8080/doc.html

### 2. 接口规范
- **RESTful API**: 符合RESTful设计规范
- **统一返回**: 统一的响应格式
- **错误码**: 标准化的错误码体系
- **版本控制**: API版本控制策略

## 🤝 贡献指南

### 1. 开发规范
- **代码规范**: 遵循阿里巴巴Java开发规范
- **提交规范**: 遵循Conventional Commits
- **分支策略**: Git Flow工作流
- **代码审查**: Pull Request代码审查

### 2. 开发流程
```bash
# 1. Fork项目
# 2. 创建功能分支
git checkout -b feature/new-feature

# 3. 提交更改
git commit -m "feat: add new feature"

# 4. 推送分支
git push origin feature/new-feature

# 5. 创建Pull Request
```

## 📄 许可证

本项目基于 [MIT License](LICENSE) 开源协议。

## 👥 维护团队

- **项目负责人**: [Your Name](https://github.com/YPYT1)
- **后端开发**: [Backend Team](https://github.com/YPYT1)
- **前端开发**: [Frontend Team](https://github.com/YPYT1)
- **测试团队**: [QA Team](https://github.com/YPYT1)

## 📞 技术支持

- **Issues**: [提交Issue](https://github.com/YPYT1/user-center/issues)
- **Discussions**: [技术讨论](https://github.com/YPYT1/user-center/discussions)
- **Email**: support@user-center.com

---

<div align="center">

**⭐ 如果这个项目对你有帮助，请给个Star支持一下！**

[![Star History Chart](https://api.star-history.com/svg?repos=YPYT1/user-center&type=Date)](https://star-history.com/#YPYT1/user-center&Date)

</div>