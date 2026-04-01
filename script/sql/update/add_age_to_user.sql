-- 为 sys_user 表添加 age 字段
ALTER TABLE sys_user ADD COLUMN age INT COMMENT '年龄' DEFAULT 0;

-- 为所有已有用户的年龄默认值填充为 0
UPDATE sys_user SET age = 0 WHERE age IS NULL;
