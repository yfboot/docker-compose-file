# Oracle XE 11g – Docker Compose 快速启动

> 基于 `gvenzl/oracle-xe:11.2.0.2-full` 镜像

## 一、启动
```bash
# 首次启动（后台）
docker compose up -d

# 查看日志
docker compose logs -f oracle11g
```
初始化完成后，即可通过以下信息连接：
| 项目 | 值 |
|------|----|
| Host | 服务器 IP / localhost |
| Port | 1521 |
| Service | XE |
| 用户/密码 | system / **oracle123** |

> 管理控制台 EM Express：<http://<服务器IP>:5500/em>

## 二、目录结构
```
├── docker-compose.yml      # 服务编排
├── scripts/                # 自动执行脚本
│   ├── 01_create_tablespace.sql
│   └── 02_create_user.sql
└── oracle-data/            # 命名卷保存的数据文件（Docker 自动创建）
```

* `01_create_tablespace.sql` 创建业务表空间 `oracle_dev`。
* `02_create_user.sql` 创建用户 `dev_user / dev123` 并授予建表等权限。

## 三、常用操作
```bash
# 进入容器
docker exec -it oracle11g bash

# SQL*Plus 登录
sqlplus dev_user/dev123@XE

# 停止 / 删除
docker compose down        # 停止并保留数据
docker compose down -v     # 停止并删除数据卷
```