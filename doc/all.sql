DROP TABLE IF EXISTS `test`;

CREATE TABLE `test`(
                       `id` BIGINT NOT NULL COMMENT 'id',
                       `name` VARCHAR(50) COMMENT 'name',
                       `password` VARCHAR(50) COMMENT 'password',
                       PRIMARY KEY (`id`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COMMENT = 'test';

insert into `test` (id, name, password) values (1, 'test', 'password');