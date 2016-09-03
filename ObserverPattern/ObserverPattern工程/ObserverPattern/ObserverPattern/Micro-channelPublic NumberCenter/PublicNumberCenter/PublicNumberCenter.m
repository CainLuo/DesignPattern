//
//  PublicNumberCenter.m
//  ObserverPattern
//
//  Created by Cain on 24/8/16.
//  Copyright © 2016年 Cain. All rights reserved.
//

#import "PublicNumberCenter.h"

static NSMutableDictionary *_publicNumberDictionary = nil;
static PublicNumberCenter *managerCenter = nil;

@implementation PublicNumberCenter

#pragma mark - Init Manager Center
+ (instancetype)managerCenter {
        
    static dispatch_once_t onceToken;
    
    dispatch_once(&onceToken, ^{
        
        managerCenter = (PublicNumberCenter *)@"PublicNumberCenter";
        managerCenter = [[PublicNumberCenter alloc] init];
        
        _publicNumberDictionary = [NSMutableDictionary dictionary];
    });
    
    NSString *classString = NSStringFromClass([self class]);
    
    if ([classString isEqualToString:@"PublicNumberCenter"] == NO) {
        NSParameterAssert(nil);
    }
    
    return managerCenter;
}

- (instancetype)init {
    
    NSString *userInfomanagerCenter = (NSString *)managerCenter;
    
    if ([userInfomanagerCenter isKindOfClass:[NSString class]] && [userInfomanagerCenter isEqualToString:@"PublicNumberCenter"]) {
        
        if (self = [super init]) {
            // 这里直接什么都不做操作
        }
        
        return self;
    }
    
    return nil;
}

#pragma mark - 管理公众号
- (void)createPublicNumber:(NSString *)publicNumber {
    
    NSParameterAssert(publicNumber);
    
    NSHashTable *hashTable = [self existPublicNumber:publicNumber];
    
    if (hashTable == nil) {
        
        hashTable = [NSHashTable weakObjectsHashTable];

        [_publicNumberDictionary setObject:hashTable forKey:publicNumber];
    }
}

- (void)removePublicNumber:(NSString *)publicNumber {
    
    NSParameterAssert(publicNumber);
    
    NSHashTable *hashTable = [self existPublicNumber:publicNumber];
    
    if (hashTable) {
        [_publicNumberDictionary removeObjectForKey:publicNumber];
    }
}

#pragma mark - 管理用户信息
- (void)addUser:(id <PublicNumberProtocol>)user withPublicNumber:(NSString *)publicNumber {
    
    NSParameterAssert(user);
    NSParameterAssert(publicNumber);
    
    NSHashTable *hashTable = [self existPublicNumber:publicNumber];

    [hashTable addObject:user];
}

- (void)removeUser:(id <PublicNumberProtocol>)user withPublicNumber:(NSString *)publicNumber {

    NSParameterAssert(publicNumber);
    
    NSHashTable *hashTable = [self existPublicNumber:publicNumber];
    
    [hashTable removeObject:user];
}

#pragma mark - 发送消息
- (void)sendMessage:(id)message toPublicNumber:(NSString *)publicNumber {
    
    NSParameterAssert(publicNumber);
    
    NSHashTable *hashTable = [self existPublicNumber:publicNumber];
    
    if (hashTable) {
        
        NSEnumerator *enumerator = [hashTable objectEnumerator];
        id <PublicNumberProtocol> object = nil;
        while (object = [enumerator nextObject]) {
            
            if ([object respondsToSelector:@selector(publicNumberMessage:publicNumberNumber:)]) {
                
                [object publicNumberMessage:message publicNumberNumber:publicNumber];
            }
        }
    }
}

#pragma mark - Private Method
- (NSHashTable *)existPublicNumber:(NSString *)publicNumber {
    
    return [_publicNumberDictionary objectForKey:publicNumber];
}

@end
