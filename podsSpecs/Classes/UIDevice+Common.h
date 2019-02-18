//
//  UIDevice+Common.h
//  车易拍SH
//
//  Created by 马敬龙 on 16/7/8.
//  Copyright © 2016年 mjl. All rights reserved.
//

#import <UIKit/UIKit.h>

static long long KB = 1024;
static long long MB = 1024*1024;
static long long GB = 1024*1024*1024;

@interface UIDevice (Common)

/**
 *  设备唯一id ->UUID
 *
 *  @return UUID码
 */
+(NSString *)c_deviceOnlyUUID;

/**
 *  apns-> deviceToken
 *
 *  @return 推送token
 */
+ (NSString *)c_getRemoteNotificationDeviceToken:(NSData *)deviceToken;

/**
 *  判断有没有网络
 *
 *  @return 网络状态
 */
+ (BOOL) c_connectedToNetwork;

/**
 *  当前设备型号
 *
 *  @return 设备型号， 如： phone 4
 */
+ (NSString *)c_currentDeviceModel;

/**
 *  设备运营商， 1=移动  2=联通  3=电信
 *
 *  @return 设备运营商
 */
+ (NSString*)c_checkCarrier;


/**
 *  获取总磁盘容量
 *
 *  @param unit 单位 KB,MB,GB
 *
 *  @return 获取总磁盘容量
 */
+(long long)c_getTotalDiskSizeWithUnit:(long long)unit;

/**
 *  获取可用磁盘容量
 *
 *  @param unit 单位 KB,MB,GB
 *
 *  @return 获取可用磁盘容量
 */
+(long long)c_getAvailableDiskSizeWithUnit:(long long)unit;


/**
 *  获取设备IP地址
 *
 *  @return IP
 */
+ (NSString *)c_getDeviceIPAdress;

@end
