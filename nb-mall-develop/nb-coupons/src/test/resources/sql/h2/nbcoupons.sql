--- 优惠码
-
-CREATE TABLE `nb_coupons` (
-  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '自增主键',
-  `cpName` varchar(32) COLLATE utf8_unicode_ci NOT NULL COMMENT '优惠券名称',
-  `channelId` bigint(20) NOT NULL COMMENT '频道ID',
-  `startTime` datetime DEFAULT NULL COMMENT '有效期开始时间',
-  `endTime` datetime DEFAULT NULL COMMENT '有效期结束时间',
-  `area` bigint(20) NOT NULL COMMENT '券区域 目前默认全国',
-  `term` int(20) NOT NULL COMMENT '优惠条件 即需要满多少',
-  `amount` int(11) NOT NULL COMMENT '优惠券面额优惠金额',
-  `userType` int(11) DEFAULT NULL COMMENT '使用用户类型目前只要注册用户即可',
-  `useLimit` int(11) NOT NULL COMMENT '单个用户限领数额',
-  `status` smallint(6) NOT NULL DEFAULT '2' COMMENT '优惠券状态：未生效（0）暂停（1）生效（2）失效(3)',
-  `sendNum` int(11) NOT NULL COMMENT '发券的总数量',
-  `sendType` int(11) NOT NULL COMMENT '发券的类型1(抢)2（领）3（发）',
-  `sendStartTime` datetime NOT NULL COMMENT '发券期限开始时间',
-  `sendEndTime` datetime NOT NULL COMMENT '发券期限结束时间',
-  `sendOrigin` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT '发券说明',
-  `created_at` datetime DEFAULT NULL COMMENT '创建时间',
-  `updated_at` datetime DEFAULT NULL COMMENT '修改时间',
-  `memo` text COLLATE utf8_unicode_ci COMMENT '备注',
-  `costsBear` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '成本承担 1商家 2频道 3 平台 目前默认商家',
-  `couponUse` int(11) DEFAULT NULL COMMENT '已使用优惠券数量',
-  `couponReceive` int(11) DEFAULT '0' COMMENT '已领取优惠券数量',
-  `categoryId` text COLLATE utf8_unicode_ci COMMENT '类目id组合',
-  `mainImages` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '上传图片地址',
-  `categoryName` text COLLATE utf8_unicode_ci COMMENT '类目名组合',
-  PRIMARY KEY (`id`)
-) ENGINE=InnoDB AUTO_INCREMENT=118 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
-
-/*Table structure for table `nb_coupons_area` */
-
-CREATE TABLE `nb_coupons_area` (
-  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
-  `couponsId` bigint(20) DEFAULT NULL COMMENT '券的ID信息',
-  `categoryId` bigint(20) DEFAULT NULL COMMENT '商品栏目ID',
-  PRIMARY KEY (`id`)
-) ENGINE=MyISAM DEFAULT CHARSET=utf8;
-
-/*Table structure for table `nb_coupons_user_order` */
-
-CREATE TABLE `nb_coupons_user_order` (
-  `id` bigint(20) NOT NULL AUTO_INCREMENT,
-  `userId` bigint(20) DEFAULT NULL COMMENT '用户ID',
-  `orderId` bigint(20) DEFAULT NULL COMMENT '订单ID',
-  `couponId` bigint(20) DEFAULT NULL COMMENT '优惠券Id',
-  PRIMARY KEY (`id`)
-) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
-
-/*Table structure for table `nb_coupons_user_order_items` */
-
-CREATE TABLE `nb_coupons_user_order_items` (
-  `id` bigint(20) NOT NULL AUTO_INCREMENT,
-  `userId` bigint(20) DEFAULT NULL COMMENT '用户ID',
-  `orderId` bigint(20) DEFAULT NULL COMMENT '订单ID',
-  `itemId` bigint(20) DEFAULT NULL COMMENT '订单明细Id',
-  `freeAmount` bigint(20) DEFAULT NULL COMMENT '优惠金额',
-  `couponsId` bigint(20) DEFAULT NULL COMMENT '对应使用的优惠券ID',
-  `skuId` bigint(20) DEFAULT NULL COMMENT 'skuId',
-  PRIMARY KEY (`id`)
-) ENGINE=MyISAM AUTO_INCREMENT=290 DEFAULT CHARSET=utf8;
-
-/*Table structure for table `nb_coupons_users` */
-
-CREATE TABLE `nb_coupons_users` (
-  `id` bigint(20) NOT NULL AUTO_INCREMENT,
-  `userId` bigint(20) DEFAULT NULL COMMENT '用户Id',
-  `couponId` bigint(20) DEFAULT NULL COMMENT '优惠券Id',
-  `status` int(11) DEFAULT NULL COMMENT '优惠券状态 1未使用 2使用 3过期',
-  PRIMARY KEY (`id`)
-) ENGINE=MyISAM AUTO_INCREMENT=2654 DEFAULT CHARSET=utf8;
+  PRIMARY KEY (`id`));
