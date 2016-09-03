//
//  PublicNumberCenter.h
//  ObserverPattern
//
//  Created by Cain on 24/8/16.
//  Copyright © 2016年 Cain. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PublicNumberProtocol.h"

@interface PublicNumberCenter : NSObject

#pragma mark - 初始化公众号管理者
+ (instancetype)managerCenter;

#pragma mark - 管理公众号
/**
 *  创建一个公众号
 *
 *  @param publicNumber 公众号
 */
- (void)createPublicNumber:(NSString *)publicNumber;

/**
 *  删除一个公众号
 *
 *  @param publicNumber 公众号
 */
- (void)removePublicNumber:(NSString *)publicNumber;

#pragma mark - 管理用户信息
/**
 *  用户开始关注公众号
 *
 *  @param user         用户
 *  @param publicNumber 公众号
 */
- (void)addUser:(id <PublicNumberProtocol>)user withPublicNumber:(NSString *)publicNumber;

/**
 *  用户取消关注公众号
 *
 *  @param user         用户
 *  @param publicNumber 公众号
 */
- (void)removeUser:(id <PublicNumberProtocol>)user withPublicNumber:(NSString *)publicNumber;

#pragma mark - 发送消息
/**
 *  发送消息到具体的公众号
 *
 *  @param message      消息
 *  @param publicNumber 公众号
 */
- (void)sendMessage:(id)message toPublicNumber:(NSString *)publicNumber;

@end
