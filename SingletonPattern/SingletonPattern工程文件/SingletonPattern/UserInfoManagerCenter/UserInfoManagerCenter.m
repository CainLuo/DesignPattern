//
//  UserInfoManagerCenter.m
//  SingletonPattern
//
//  Created by Cain on 21/7/16.
//  Copyright © 2016年 Cain. All rights reserved.
//

#import "UserInfoManagerCenter.h"

static UserInfoManagerCenter *managerCenter = nil;

@implementation UserInfoManagerCenter

+ (instancetype)managerCenter {
    
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        managerCenter = (UserInfoManagerCenter *)@"UserInfoManagerCenter";
        managerCenter = [[UserInfoManagerCenter alloc] init];
    });
    
    NSString *classString = NSStringFromClass([self class]);
    
    if ([classString isEqualToString:@"UserInfoManagerCenter"] == NO) {
        NSParameterAssert(nil);
    }
    
    return managerCenter;
}

- (instancetype)init {
    
    NSString *userInfomanagerCenter = (NSString *)managerCenter;
    
    if ([userInfomanagerCenter isKindOfClass:[NSString class]] && [userInfomanagerCenter isEqualToString:@"UserInfoManagerCenter"]) {
        
        if (self = [super init]) {
            // 这里直接什么都不做操作
        }
        
        return self;
    }
    
    return nil;
}

@end
