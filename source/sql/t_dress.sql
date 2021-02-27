CREATE TABLE `t_dress` (
  `id` bigint(20) NOT NULL COMMENT 'ID',
  `brand` varchar(30) DEFAULT NULL COMMENT '品牌',
  `user_age` varchar(30) DEFAULT NULL COMMENT '适用年龄',
  `material` varchar(30) DEFAULT NULL COMMENT '材质',
  `size`  varchar(30) DEFAULT NULL COMMENT '尺寸(s m l XL XXL等)',
  `style` varchar(900) DEFAULT NULL COMMENT '风格(民族，古典，田园等)',
  `color` varchar(30) DEFAULT NULL COMMENT '颜色',
  `neckline` varchar(90) DEFAULT NULL COMMENT '领型（圆型，深V等）',
  `waist_shape` varchar(90) DEFAULT NULL COMMENT '腰型（高腰，低腰）',
  `sleeve_shape` varchar(90) DEFAULT NULL COMMENT '袖型（长袖短袖）',
  `season` varchar(30) DEFAULT NULL COMMENT '适用季节',
  `picture` varchar(90) DEFAULT NULL COMMENT '图案',
  `dress_shape` varchar(90) DEFAULT NULL COMMENT '裙型(百褶裙等)',
  `dress_length` varchar(90) DEFAULT NULL COMMENT '裙长(长裙 短裙)',
  `outline_sgape` varchar(90) DEFAULT NULL COMMENT '廓型(A型、X型表示不懂)',
  `popular_elemet` varchar(90) DEFAULT NULL COMMENT '流行元素(纽扣 印花 亮丝 露背等)',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  `creator` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `updater` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='连衣裙表';


-- 下边这个是按照商品表设计的
CREATE TABLE `t_goods` (
  `id` bigint(20) NOT NULL COMMENT 'ID',
  `goods_name` varchar(30) DEFAULT NULL COMMENT '商品名称',
  `goods_brand`  varchar(30) DEFAULT NULL COMMENT '商品品牌',
  `creator` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `updater` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COMMENT='商品表';

CREATE TABLE `t_goods_sku_key` (
  `id` bigint(20) NOT NULL COMMENT 'ID',
  `goods_id` bigint(20) NOT NULL COMMENT '商品ID',
  `sku_key`  varchar(30) DEFAULT NULL COMMENT 'sku_key`',
  `creator` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `updater` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COMMENT='商品sku属性key表';

CREATE TABLE `t_goods_sku_vaule` (
  `id` bigint(20) NOT NULL COMMENT 'ID',
  `goods_id` bigint(20) NOT NULL COMMENT '商品ID',
  `sku_key_id`  bigint(20) NOT NULL COMMENT 'sku_key_id`',
  `sku_value` varchar(30) DEFAULT NULL COMMENT 'sku_value',
  `creator` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `updater` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COMMENT='商品sku属性value表';