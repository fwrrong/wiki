# 电子书表
drop table if exists `ebook`;
create table `ebook` (
                         `id` bigint not null comment 'id',
                         `name` varchar(50) comment 'name',
                         `category1_id` bigint comment 'cat1',
                         `category2_id` bigint comment 'cat2',
                         `description` varchar(200) comment 'description',
                         `cover` varchar(200) comment 'cover',
                         `doc_count` int not null default 0 comment 'doc_count',
                         `view_count` int not null default 0 comment 'view_count',
                         `vote_count` int not null default 0 comment 'vote_count',
                         primary key (`id`)
) engine=innodb default charset=utf8mb4 comment='eBook';

insert into `ebook` (id, name, description) values (1, 'Spring Boot Intro', '零基础入门 Java 开发，企业级应用开发最佳首选框架');
insert into `ebook` (id, name, description) values (2, 'VueIntro', '零基础入门 Vue 开发，企业级应用开发最佳首选框架');
insert into `ebook` (id, name, description) values (3, 'Python Intro', '零基础入门 Python 开发，企业级应用开发最佳首选框架');
insert into `ebook` (id, name, description) values (4, 'Mysql Intro', '零基础入门 Mysql 开发，企业级应用开发最佳首选框架');
insert into `ebook` (id, name, description) values (5, 'Oracle Intro', '零基础入门 Oracle 开发，企业级应用开发最佳首选框架');

drop table if exists `test`;
create table `test` (
                        `id` bigint not null comment 'id',
                        `name` varchar(50) comment 'name',
                        `password` varchar(50) comment 'password',
                        primary key (`id`)
) engine=innodb default charset=utf8mb4 comment='test';

insert into `test` (id, name, password) values (1, 'test', 'password');









DROP TABLE IF EXISTS `test`;
CREATE TABLE `test`(
                       `id` BIGINT NOT NULL COMMENT 'id',
                       `name` VARCHAR(50) COMMENT 'name',
                       `password` VARCHAR(50) COMMENT 'password',
                       PRIMARY KEY (`id`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COMMENT = 'test';
insert into `test` (id, name, password) values (1, 'test', 'password');

DROP TABLE IF EXISTS `demo`;
CREATE TABLE `demo`(
                       `id` BIGINT NOT NULL COMMENT 'id',
                       `name` VARCHAR(50) COMMENT 'name',
                       PRIMARY KEY (`id`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COMMENT = 'test';
insert into `demo` (id, name) values (1, 'test');