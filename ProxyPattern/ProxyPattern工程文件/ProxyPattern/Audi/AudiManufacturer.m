//
//  AudiManufacturer.m
//  ProxyPattern
//
//  Created by Cain on 25/7/16.
//  Copyright © 2016年 Cain. All rights reserved.
//

#import "AudiManufacturer.h"

@implementation AudiManufacturer

- (void)buyCarCount:(NSInteger)count {

    if (self.delegate && [self.delegate respondsToSelector:@selector(audiManufacturer:orderQuantity:)]) {
        [self.delegate audiManufacturer:self orderQuantity:count];
    }
}

- (void)buyCarModel:(NSString *)model {

    if (self.delegate && [self.delegate respondsToSelector:@selector(audiManufacturer:audiDelegateInfo:)]) {
        [self.delegate audiManufacturer:self audiDelegateInfo:model];
    }
}

@end
