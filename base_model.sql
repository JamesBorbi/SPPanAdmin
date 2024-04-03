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

       PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='x列表';

CREATE TABLE `tb_x` (
        `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键id',
        `create_time` datetime NOT NULL DEFAULT '1970-01-01 00:00:00' COMMENT '创建时间',
        `create_by` varchar(50) NOT NULL DEFAULT '' COMMENT '创建人',
        `update_time` datetime NOT NULL DEFAULT '1970-01-01 00:00:00' COMMENT '更新时间',
        `update_by` varchar(50) NOT NULL DEFAULT '' COMMENT '更新人',
        `last_update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '最后更新时间',
        `is_delete` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否删除：0否 1是',

        `tweet_date` datetime NOT NULL COMMENT '推文日期',
        `display_name` varchar(255) NOT NULL COMMENT '显示名称',
        `user_name` varchar(255) NOT NULL COMMENT '用户名称',
        `tweet_url` varchar(255) NOT NULL COMMENT '推文链接',
        `media_type` varchar(50) NOT NULL COMMENT '媒体类型',
        `media_url` varchar(255) DEFAULT NULL COMMENT '媒体链接',
        `saved_filename` varchar(255) DEFAULT NULL COMMENT '保存的文件名',
        `tweet_content` text NOT NULL COMMENT '推文内容',
        `favorite_count` int NOT NULL DEFAULT '0' COMMENT '收藏数',
        `retweet_count` int NOT NULL DEFAULT '0' COMMENT '转发数',
        `reply_count` int NOT NULL DEFAULT '0' COMMENT '回复数',


        PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='x列表';