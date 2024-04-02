CREATE TABLE `tb_copy` (
       `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键id',
       `create_time` datetime NOT NULL DEFAULT '1970-01-01 00:00:00' COMMENT '创建时间',
       `create_by` varchar(50) NOT NULL DEFAULT '' COMMENT '创建人',
       `update_time` datetime NOT NULL DEFAULT '1970-01-01 00:00:00' COMMENT '更新时间',
       `update_by` varchar(50) NOT NULL DEFAULT '' COMMENT '更新人',
       `last_update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '最后更新时间',
       `is_delete` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否删除：0否 1是',
       PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='默认字段表';

CREATE TABLE `tb_x` (
       `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键id',
       `create_time` datetime NOT NULL DEFAULT '1970-01-01 00:00:00' COMMENT '创建时间',
       `create_by` varchar(50) NOT NULL DEFAULT '' COMMENT '创建人',
       `update_time` datetime NOT NULL DEFAULT '1970-01-01 00:00:00' COMMENT '更新时间',
       `update_by` varchar(50) NOT NULL DEFAULT '' COMMENT '更新人',
       `last_update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '最后更新时间',
       `is_delete` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否删除：0否 1是',
       `title` varchar(50) NOT NULL DEFAULT '' COMMENT '标题',
       `comment` varchar(1000) NOT NULL DEFAULT '' COMMENT '内容',
       `media_url` varchar(2000) NOT NULL DEFAULT '' COMMENT '媒体地址',
       PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='x列表';