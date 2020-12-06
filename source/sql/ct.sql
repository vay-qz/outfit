CREATE TABLE `tops` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `style` int DEFAULT NULL COMMENT '风格',
  `type` int DEFAULT NULL COMMENT '类型',
  `season` int DEFAULT NULL COMMENT '季节',
  `main_color` int DEFAULT NULL COMMENT '主色调',
  `assistant_color` int DEFAULT NULL COMMENT '副色调',
  `length` int DEFAULT NULL COMMENT '衣长',
  `price` int DEFAULT NULL COMMENT '价格',
  `shoulder_width` int DEFAULT NULL COMMENT '肩宽',
  `sleeve length` int DEFAULT NULL COMMENT '袖长',
  `hooded` int DEFAULT NULL COMMENT '是否连帽',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `bottoms` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `style` int DEFAULT NULL COMMENT '风格',
  `type` varchar(100) DEFAULT NULL COMMENT '类型',
  `main_color` varchar(10) DEFAULT NULL COMMENT '主色调',
  `assistant_color` varchar(10) DEFAULT NULL COMMENT '副色调',
  `length` int DEFAULT NULL COMMENT '长度',
  `price` int DEFAULT NULL COMMENT '价格',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `accessories` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `type` int DEFAULT NULL COMMENT '类型',
  `main_color` int DEFAULT NULL COMMENT '主色调',
  `assistant_color` int DEFAULT NULL COMMENT '副色调',
  `price` int DEFAULT NULL COMMENT '价格',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `body` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `face` int DEFAULT NULL COMMENT '脸型',
  `height` int DEFAULT NULL COMMENT '身高',
  `weight` int DEFAULT NULL COMMENT '体重',
  `shoulder_width` int DEFAULT NULL COMMENT '肩宽',
  `bust` int DEFAULT NULL COMMENT '胸围',
  `waistline` int DEFAULT NULL COMMENT '腰围',
  `arm_length` int DEFAULT NULL COMMENT '臂长',
  `upper_body_length` int DEFAULT NULL COMMENT '上身长',
  `hips` int DEFAULT NULL COMMENT '臀围',
  `thigh_circumference` int DEFAULT NULL COMMENT '大腿围',
  `leg_length` int DEFAULT NULL COMMENT '腿长',
  `foot_length` int DEFAULT NULL COMMENT '脚长',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `shoes` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `season` int DEFAULT NULL COMMENT '季节',
  `type` int DEFAULT NULL COMMENT '类型',
  `main_color` int DEFAULT NULL COMMENT '主色调',
  `assistant_color` int DEFAULT NULL COMMENT '副色调',
  `size` double DEFAULT NULL COMMENT '尺码',
  `price` int DEFAULT NULL COMMENT '价格',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;