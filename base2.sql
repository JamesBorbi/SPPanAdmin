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
CREATE TABLE `tb_config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `create_time` datetime NOT NULL DEFAULT '1970-01-01 00:00:00' COMMENT '创建时间',
  `create_by` varchar(50) NOT NULL DEFAULT '' COMMENT '创建人',
  `update_time` datetime NOT NULL DEFAULT '1970-01-01 00:00:00' COMMENT '更新时间',
  `update_by` varchar(50) NOT NULL DEFAULT '' COMMENT '更新人',
  `last_update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '最后更新时间',
  `is_delete` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否删除：0否 1是',
  `vip_url` varchar(255) NOT NULL DEFAULT '' COMMENT '会员网址',
  `vip_name` varchar(255) NOT NULL DEFAULT '' COMMENT '会员用户名',
  `vip_password` varchar(255) NOT NULL DEFAULT '' COMMENT '密码',
  `warn_num` int(6) NOT NULL DEFAULT '0' COMMENT '报警值',
  `is_boss` tinyint(1) NOT NULL DEFAULT '0' COMMENT '老板模式:0关闭 1开启',
  `play_module` tinyint(1) NOT NULL DEFAULT '0' COMMENT '玩法:0普通',
  `server_com` varchar(255) NOT NULL DEFAULT '' COMMENT '服务器域名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='配置管理表';