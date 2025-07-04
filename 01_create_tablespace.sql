-- =====================================================
-- 01_创建表空间脚本
-- =====================================================

CREATE TABLESPACE oracle_dev
    DATAFILE 'oracle_dev01.dbf'
    SIZE 100M
    AUTOEXTEND ON NEXT 10M
    MAXSIZE 500M
    EXTENT MANAGEMENT LOCAL
    SEGMENT SPACE MANAGEMENT AUTO;