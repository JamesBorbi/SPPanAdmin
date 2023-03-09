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
CREATE TABLE `tb_odds` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `create_time` datetime NOT NULL DEFAULT '1970-01-01 00:00:00' COMMENT '创建时间',
  `create_by` varchar(50) NOT NULL DEFAULT '' COMMENT '创建人',
  `update_time` datetime NOT NULL DEFAULT '1970-01-01 00:00:00' COMMENT '更新时间',
  `update_by` varchar(50) NOT NULL DEFAULT '' COMMENT '更新人',
  `last_update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '最后更新时间',
  `is_delete` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否删除：0否 1是',
  `odds` int(8) NOT NULL DEFAULT '0' COMMENT '赔率',
  `min` int(8) NOT NULL DEFAULT '0' COMMENT '最小限额',
  `max` int(8) NOT NULL DEFAULT '0' COMMENT '最大限额\n',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='赔率设置表';
CREATE TABLE `tb_short_link` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `create_time` datetime NOT NULL DEFAULT '1970-01-01 00:00:00' COMMENT '创建时间',
  `create_by` varchar(50) NOT NULL DEFAULT '' COMMENT '创建人',
  `update_time` datetime NOT NULL DEFAULT '1970-01-01 00:00:00' COMMENT '更新时间',
  `update_by` varchar(50) NOT NULL DEFAULT '' COMMENT '更新人',
  `last_update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '最后更新时间',
  `is_delete` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否删除：0否 1是',
  `short_type` tinyint(1) NOT NULL DEFAULT '0' COMMENT '短链接:0关闭 1短链接1 2短链接2',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='链接配置表';
CREATE TABLE `tb_preset_order` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `create_time` datetime NOT NULL DEFAULT '1970-01-01 00:00:00' COMMENT '创建时间',
  `create_by` varchar(50) NOT NULL DEFAULT '' COMMENT '创建人',
  `update_time` datetime NOT NULL DEFAULT '1970-01-01 00:00:00' COMMENT '更新时间',
  `update_by` varchar(50) NOT NULL DEFAULT '' COMMENT '更新人',
  `last_update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '最后更新时间',
  `is_delete` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否删除：0否 1是',
  `sequence` int(8) NOT NULL DEFAULT '0' COMMENT '序号',
  `comment` varchar(255) NOT NULL DEFAULT '' COMMENT '文本',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='预设订单管理表';
CREATE TABLE `tb_with_order` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `create_time` datetime NOT NULL DEFAULT '1970-01-01 00:00:00' COMMENT '创建时间',
  `create_by` varchar(50) NOT NULL DEFAULT '' COMMENT '创建人',
  `update_time` datetime NOT NULL DEFAULT '1970-01-01 00:00:00' COMMENT '更新时间',
  `update_by` varchar(50) NOT NULL DEFAULT '' COMMENT '更新人',
  `last_update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '最后更新时间',
  `is_delete` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否删除：0否 1是',
  `nick_name` varchar(50) NOT NULL DEFAULT '' COMMENT '昵称',
  `order` varchar(50) NOT NULL DEFAULT '' COMMENT '订单',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='跟单列表表';
CREATE TABLE `tb_order` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `create_time` datetime NOT NULL DEFAULT '1970-01-01 00:00:00' COMMENT '创建时间',
  `create_by` varchar(50) NOT NULL DEFAULT '' COMMENT '创建人',
  `update_time` datetime NOT NULL DEFAULT '1970-01-01 00:00:00' COMMENT '更新时间',
  `update_by` varchar(50) NOT NULL DEFAULT '' COMMENT '更新人',
  `last_update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '最后更新时间',
  `is_delete` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否删除：0否 1是',
  `issue_num` varchar(50) NOT NULL DEFAULT '' COMMENT '期号',
  `comment` varchar(50) NOT NULL DEFAULT '' COMMENT '文本',
  `member` varchar(50) NOT NULL DEFAULT '' COMMENT '会员',
  `total_amount` decimal(8,4) NOT NULL DEFAULT '0.0000' COMMENT '总金额',
  `order_status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='订单表';
CREATE TABLE `tb_subaudit` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `create_time` datetime NOT NULL DEFAULT '1970-01-01 00:00:00' COMMENT '创建时间',
  `create_by` varchar(50) NOT NULL DEFAULT '' COMMENT '创建人',
  `update_time` datetime NOT NULL DEFAULT '1970-01-01 00:00:00' COMMENT '更新时间',
  `update_by` varchar(50) NOT NULL DEFAULT '' COMMENT '更新人',
  `last_update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '最后更新时间',
  `is_delete` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否删除：0否 1是',
  `nick` varchar(50) NOT NULL DEFAULT '' COMMENT '昵称',
  `num` int(8) NOT NULL DEFAULT '0' COMMENT '分数',
  `su_type` tinyint(1) NOT NULL DEFAULT '0' COMMENT '类型',
  `su_status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='上下分审核表';
CREATE TABLE `tb_member` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `create_time` datetime NOT NULL DEFAULT '1970-01-01 00:00:00' COMMENT '创建时间',
  `create_by` varchar(50) NOT NULL DEFAULT '' COMMENT '创建人',
  `update_time` datetime NOT NULL DEFAULT '1970-01-01 00:00:00' COMMENT '更新时间',
  `update_by` varchar(50) NOT NULL DEFAULT '' COMMENT '更新人',
  `last_update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '最后更新时间',
  `is_delete` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否删除：0否 1是',
  `wx_nick` varchar(50) NOT NULL DEFAULT '' COMMENT '微信昵称',
  `nick` varchar(50) NOT NULL DEFAULT '' COMMENT '昵称',
  `product_num` int(8) NOT NULL DEFAULT '0' COMMENT '积分',
  `cast_num` int(8) NOT NULL DEFAULT '0' COMMENT '投分',
  `loss_num` int(8) NOT NULL DEFAULT '0' COMMENT '盈亏',
  `is_tora` tinyint(1) NOT NULL DEFAULT '0' COMMENT '自动托:0否 1是',
  `is_eat` tinyint(1) NOT NULL DEFAULT '0' COMMENT '吃:0否 1是',
  `is_check` tinyint(1) NOT NULL DEFAULT '0' COMMENT '可查流水:0否 1是',
  `is_binding` tinyint(1) NOT NULL DEFAULT '0' COMMENT '绑定:0否 1是',
  `logo` varchar(500) NOT NULL DEFAULT '' COMMENT '头像',
  `is_talk` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否私聊:0否 1是',
  `is_in_web` tinyint(1) NOT NULL DEFAULT '0' COMMENT '只进网页群:0否 1是',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='会员管理表';
CREATE TABLE `tb_member_operate` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `create_time` datetime NOT NULL DEFAULT '1970-01-01 00:00:00' COMMENT '创建时间',
  `create_by` varchar(50) NOT NULL DEFAULT '' COMMENT '创建人',
  `update_time` datetime NOT NULL DEFAULT '1970-01-01 00:00:00' COMMENT '更新时间',
  `update_by` varchar(50) NOT NULL DEFAULT '' COMMENT '更新人',
  `last_update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '最后更新时间',
  `is_delete` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否删除：0否 1是',
  `member_nick` varchar(50) NOT NULL DEFAULT '' COMMENT '会员昵称',
  `comment` varchar(250) NOT NULL DEFAULT '' COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='会员操作管理表';
CREATE TABLE `tb_history_record` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `create_time` datetime NOT NULL DEFAULT '1970-01-01 00:00:00' COMMENT '创建时间',
  `create_by` varchar(50) NOT NULL DEFAULT '' COMMENT '创建人',
  `update_time` datetime NOT NULL DEFAULT '1970-01-01 00:00:00' COMMENT '更新时间',
  `update_by` varchar(50) NOT NULL DEFAULT '' COMMENT '更新人',
  `last_update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '最后更新时间',
  `is_delete` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否删除：0否 1是',
  `issue_num` varchar(50) NOT NULL DEFAULT '' COMMENT '期号',
  `use_amount` decimal(8,0) NOT NULL DEFAULT '0' COMMENT '投额',
  `is_prize` tinyint(1) NOT NULL DEFAULT '0' COMMENT '中奖',
  `loss_num` int(8) NOT NULL DEFAULT '0' COMMENT '盈亏',
  `true_amount` int(8) NOT NULL DEFAULT '0' COMMENT '实投',
  `disk_order` varchar(250) NOT NULL DEFAULT '' COMMENT '网盘下单',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='历史记录表';
CREATE TABLE `tb_history_record_prize` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `create_time` datetime NOT NULL DEFAULT '1970-01-01 00:00:00' COMMENT '创建时间',
  `create_by` varchar(50) NOT NULL DEFAULT '' COMMENT '创建人',
  `update_time` datetime NOT NULL DEFAULT '1970-01-01 00:00:00' COMMENT '更新时间',
  `update_by` varchar(50) NOT NULL DEFAULT '' COMMENT '更新人',
  `last_update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '最后更新时间',
  `is_delete` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否删除：0否 1是',
  `issue_num` varchar(50) NOT NULL DEFAULT '' COMMENT '期号',
  `prize_time` datetime NOT NULL DEFAULT '1970-01-01 00:00:00' COMMENT '开奖时间',
  `prize_number` varchar(50) NOT NULL DEFAULT '0' COMMENT '开奖号码',
  `hostory_status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '状态:0否 1是',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='开奖历史记录表';
CREATE TABLE `tb_login_lock` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `create_time` datetime NOT NULL DEFAULT '1970-01-01 00:00:00' COMMENT '创建时间',
  `create_by` varchar(50) NOT NULL DEFAULT '' COMMENT '创建人',
  `update_time` datetime NOT NULL DEFAULT '1970-01-01 00:00:00' COMMENT '更新时间',
  `update_by` varchar(50) NOT NULL DEFAULT '' COMMENT '更新人',
  `last_update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '最后更新时间',
  `is_delete` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否删除：0否 1是',
  `is_open_proxy` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否开启代理:0关闭 1全局关闭 2开启',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='登录频繁解锁表';
CREATE TABLE `tb_return_amount` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `create_time` datetime NOT NULL DEFAULT '1970-01-01 00:00:00' COMMENT '创建时间',
  `create_by` varchar(50) NOT NULL DEFAULT '' COMMENT '创建人',
  `update_time` datetime NOT NULL DEFAULT '1970-01-01 00:00:00' COMMENT '更新时间',
  `update_by` varchar(50) NOT NULL DEFAULT '' COMMENT '更新人',
  `last_update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '最后更新时间',
  `is_delete` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否删除：0否 1是',
  `nick` varchar(50) NOT NULL DEFAULT '' COMMENT '昵称',
  `lucky_five` varchar(50) NOT NULL DEFAULT '' COMMENT '幸运五比例',
  `lucky_five_amount` decimal(8,4) NOT NULL DEFAULT '0.0000' COMMENT '幸运五返水金额',
  `dragon_tiger` decimal(8,4) NOT NULL DEFAULT '0.0000' COMMENT '龙虎比例',
  `dragon_tiger_amount` decimal(8,4) NOT NULL DEFAULT '0.0000' COMMENT '龙虎返水金额',
  `total_amount` decimal(8,4) NOT NULL DEFAULT '0.0000' COMMENT '合计返水金额',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='返水列表表';
CREATE TABLE `tb_eat_set` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `create_time` datetime NOT NULL DEFAULT '1970-01-01 00:00:00' COMMENT '创建时间',
  `create_by` varchar(50) NOT NULL DEFAULT '' COMMENT '创建人',
  `update_time` datetime NOT NULL DEFAULT '1970-01-01 00:00:00' COMMENT '更新时间',
  `update_by` varchar(50) NOT NULL DEFAULT '' COMMENT '更新人',
  `last_update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '最后更新时间',
  `is_delete` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否删除：0否 1是',
  `eat_type` tinyint(1) NOT NULL DEFAULT '0' COMMENT '吃码类型：1一定位 2二定位 3三定位 4四定位 5二字现 6三字现 7四字现 8盈亏上限 9盈亏下限',
  `eat_num` int(8) NOT NULL DEFAULT '0' COMMENT '吃码数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='吃码额度设定';
CREATE TABLE `tb_eat_loss` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `create_time` datetime NOT NULL DEFAULT '1970-01-01 00:00:00' COMMENT '创建时间',
  `create_by` varchar(50) NOT NULL DEFAULT '' COMMENT '创建人',
  `update_time` datetime NOT NULL DEFAULT '1970-01-01 00:00:00' COMMENT '更新时间',
  `update_by` varchar(50) NOT NULL DEFAULT '' COMMENT '更新人',
  `last_update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '最后更新时间',
  `is_delete` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否删除：0否 1是',
  `time_num` int(8) NOT NULL DEFAULT '0' COMMENT '期数',
  `use_amount` decimal(8,0) NOT NULL DEFAULT '0' COMMENT '投额',
  `is_prize` tinyint(1) NOT NULL DEFAULT '0' COMMENT '中奖:0否 1是',
  `loss_num` int(8) NOT NULL DEFAULT '0' COMMENT '盈亏:0否 1是',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='吃码盈亏表';