-- 回滚脚本：删除 sys_user 表的 age 字段
ALTER TABLE sys_user DROP COLUMN IF EXISTS age;
