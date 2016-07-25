//
//  Customer.m
//  ProxyPattern
//
//  Created by Cain on 25/7/16.
//  Copyright © 2016年 Cain. All rights reserved.
//

#import "Customer.h"

@implementation Customer

- (NSString *)isEnoughBuyCar:(NSInteger)money {

    if (money >= 1000000) {
        
        return @"您的钱足够购买Q7";
    }
    
    return @"您的钱不足以购买Q7";
}

@end
