drop table if exists user;
CREATE TABLE user
(
    id       int NOT NULL AUTO_INCREMENT COMMENT '主键',
    login    int DEFAULT NULL COMMENT '登录账户',
    nickname int DEFAULT NULL COMMENT '昵称',
    password int DEFAULT NULL COMMENT '密码',
    PRIMARY KEY (id)
) comment ='用户' ENGINE = InnoDB
                DEFAULT CHARSET = utf8mb4
                COLLATE = utf8mb4_0900_ai_ci;

drop table if exists body;
CREATE TABLE body
(
    id                  int NOT NULL AUTO_INCREMENT COMMENT '主键',
    face                int DEFAULT NULL COMMENT '脸型',
    height              int DEFAULT NULL COMMENT '身高',
    weight              int DEFAULT NULL COMMENT '体重',
    shoulder_width      int DEFAULT NULL COMMENT '肩宽',
    bust                int DEFAULT NULL COMMENT '胸围',
    waistline           int DEFAULT NULL COMMENT '腰围',
    arm_length          int DEFAULT NULL COMMENT '臂长',
    upper_body_length   int DEFAULT NULL COMMENT '上身长',
    hips                int DEFAULT NULL COMMENT '臀围',
    thigh_circumference int DEFAULT NULL COMMENT '大腿围',
    leg_length          int DEFAULT NULL COMMENT '腿长',
    foot_length         int DEFAULT NULL COMMENT '脚长',
    head_circumference  int default null COMMENT '头围',
    user                int not null comment '用户id',
    PRIMARY KEY (id)
) comment ='身体' ENGINE = InnoDB
                DEFAULT CHARSET = utf8mb4
                COLLATE = utf8mb4_0900_ai_ci;

drop table if exists coat;
CREATE TABLE coat
(
    id              int NOT NULL AUTO_INCREMENT COMMENT '主键',
    style           int          DEFAULT NULL COMMENT '风格',
    type            int          DEFAULT NULL COMMENT '类型',
    season          int          DEFAULT NULL COMMENT '季节',
    length          int          DEFAULT NULL COMMENT '衣长',
    shoulder_width  int          DEFAULT NULL COMMENT '肩宽',
    sleeve_length   int          DEFAULT NULL COMMENT '袖长',
    sleeve_type     int          DEFAULT NULL COMMENT '袖型',
    collar          int          DEFAULT NULL COMMENT '领型',
    hooded          int          DEFAULT NULL COMMENT '是否连帽',
    main_color      varchar(100) DEFAULT NULL COMMENT '主色调',
    assistant_color varchar(100) DEFAULT NULL COMMENT '副色调',
    price           int          DEFAULT NULL COMMENT '价格',
    user            int not null comment '用户id',
    PRIMARY KEY (id)
) comment ='上衣' ENGINE = InnoDB
                DEFAULT CHARSET = utf8mb4
                COLLATE = utf8mb4_0900_ai_ci;

drop table if exists pants;
CREATE TABLE pants
(
    id               int NOT NULL AUTO_INCREMENT COMMENT '主键',
    style            int          DEFAULT NULL COMMENT '风格',
    type             varchar(100) DEFAULT NULL COMMENT '类型',
    front_length     int          DEFAULT NULL COMMENT '前档长',
    back_gear_length int          DEFAULT NULL COMMENT '后档长',
    length           int          DEFAULT NULL COMMENT '裤长',
    pants_type       int          DEFAULT NULL COMMENT '裤型',
    thicken          int          DEFAULT NULL COMMENT '是否加厚',
    main_color       varchar(100) DEFAULT NULL COMMENT '主色调',
    assistant_color  varchar(100) DEFAULT NULL COMMENT '副色调',
    price            int          DEFAULT NULL COMMENT '价格',
    user             int not null comment '用户id',
    PRIMARY KEY (id)
) comment ='下装' ENGINE = InnoDB
                AUTO_INCREMENT = 4
                DEFAULT CHARSET = utf8mb4
                COLLATE = utf8mb4_0900_ai_ci;

drop table if exists shoes;
CREATE TABLE shoes
(
    id          int NOT NULL AUTO_INCREMENT COMMENT '主键',
    season      int          DEFAULT NULL COMMENT '季节',
    type        int          DEFAULT NULL COMMENT '鞋型',
    size        double       DEFAULT NULL COMMENT '尺码',
    upper       int          DEFAULT NULL COMMENT '鞋帮',
    heel        double       DEFAULT NULL COMMENT '鞋跟',
    technology  int          DEFAULT NULL COMMENT '科技',
    logo        int          DEFAULT NULL COMMENT '品牌',
    sole_color  varchar(100) DEFAULT NULL COMMENT '鞋底颜色',
    upper_color varchar(100) DEFAULT NULL COMMENT '鞋面颜色',
    price       int          DEFAULT NULL COMMENT '价格',
    user        int not null comment '用户id',
    PRIMARY KEY (id)
) comment ='鞋' ENGINE = InnoDB
               DEFAULT CHARSET = utf8mb4
               COLLATE = utf8mb4_0900_ai_ci;

drop table if exists jewelry;
CREATE TABLE jewelry
(
    id              int NOT NULL AUTO_INCREMENT COMMENT '主键',
    type            int          DEFAULT NULL COMMENT '类型',
    material        int          default null comment '材质',
    logo            int          default null comment '品牌',
    main_color      varchar(100) DEFAULT NULL COMMENT '主色调',
    assistant_color varchar(100) DEFAULT NULL COMMENT '副色调',
    price           int          DEFAULT NULL COMMENT '价格',
    user            int not null comment '用户id',
    PRIMARY KEY (id)
) comment ='首饰' ENGINE = InnoDB
                DEFAULT CHARSET = utf8mb4
                COLLATE = utf8mb4_0900_ai_ci;

drop table if exists packet;
create table packet
(
    id              int NOT NULL AUTO_INCREMENT COMMENT '主键',
    width           int          DEFAULT NULL COMMENT '宽',
    height          int          DEFAULT NULL COMMENT '高',
    thickness       int          DEFAULT NULL COMMENT '厚',
    type            int          DEFAULT NULL COMMENT '类型',
    logo            int          default null comment '品牌',
    price           int          DEFAULT NULL COMMENT '价格',
    main_color      varchar(100) DEFAULT NULL COMMENT '主色调',
    assistant_color varchar(100) DEFAULT NULL COMMENT '副色调',
    user            int not null comment '用户id',
    PRIMARY KEY (id)
) comment ='包' ENGINE = InnoDB
               DEFAULT CHARSET = utf8mb4
               COLLATE = utf8mb4_0900_ai_ci;

drop table if exists dress;
create table dress
(
    id   int NOT NULL AUTO_INCREMENT COMMENT '主键',
    user int not null comment '用户id',
    PRIMARY KEY (id)
) comment ='连衣裙' ENGINE = InnoDB
                 DEFAULT CHARSET = utf8mb4
                 COLLATE = utf8mb4_0900_ai_ci;