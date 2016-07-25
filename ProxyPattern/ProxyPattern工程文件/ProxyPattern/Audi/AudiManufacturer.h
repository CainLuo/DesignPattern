//
//  AudiManufacturer.h
//  ProxyPattern
//
//  Created by Cain on 25/7/16.
//  Copyright © 2016年 Cain. All rights reserved.
//

#import <Foundation/Foundation.h>

@class AudiManufacturer;

@protocol AudiManufacturerDelegate <NSObject>

@required
- (void)audiManufacturer:(AudiManufacturer *)audiManufacturer
           orderQuantity:(NSInteger)orderQuantity;

@optional
- (void)audiManufacturer:(AudiManufacturer *)audiManufacturer
            audiDelegateInfo:(NSString *)audiDelegateInfo;
@end

@interface AudiManufacturer : NSObject

@property (nonatomic, weak) id<AudiManufacturerDelegate> delegate;

- (void)buyCarCount:(NSInteger)count;
- (void)buyCarModel:(NSString *)model;

@end
