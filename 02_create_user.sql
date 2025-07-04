-- =====================================================
-- 02_创建业务用户并授权
-- =====================================================

-- 创建用户 dev_user，默认表空间 oracle_dev
CREATE USER dev_user IDENTIFIED BY dev123
  DEFAULT TABLESPACE oracle_dev
  TEMPORARY TABLESPACE TEMP
  QUOTA UNLIMITED ON oracle_dev;

-- 授予常用权限
GRANT
  CONNECT,                -- 基本连接
  RESOURCE,               -- 创建表、索引、序列等
  CREATE VIEW,
  CREATE SYNONYM,
  CREATE SEQUENCE,
  CREATE PROCEDURE,
  CREATE TRIGGER
TO dev_user;

-- 如需授予创建物化视图、类型等可追加：
-- GRANT CREATE MATERIALIZED VIEW, CREATE TYPE TO dev_user;

COMMIT;

SELECT 'User dev_user created & privileges granted' AS status FROM dual;