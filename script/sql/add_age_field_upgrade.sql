-- =====================================================
-- 数据库升级脚本：为 sys_user 表添加年龄字段
-- 执行日期：2026-04-02
-- 功能说明：
--   1. 为 sys_user 表添加 age 字段
--   2. 为所有已有用户设置年龄默认值为 0
-- =====================================================

-- 1. 添加年龄字段
ALTER TABLE sys_user ADD COLUMN age INT COMMENT '年龄' AFTER login_date;

-- 2. 为所有已有用户设置年龄默认值为 0
UPDATE sys_user SET age = 0 WHERE age IS NULL;

-- 3. 将 age 字段设置为非空
ALTER TABLE sys_user MODIFY COLUMN age INT NOT NULL DEFAULT 0 COMMENT '年龄';
