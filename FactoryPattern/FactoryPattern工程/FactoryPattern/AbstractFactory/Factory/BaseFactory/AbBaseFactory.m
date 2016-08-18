//
//  AbBaseFactory.m
//  FactoryPattern
//
//  Created by Cain on 18/8/16.
//  Copyright © 2016年 Cain. All rights reserved.
//

#import "AbBaseFactory.h"

@implementation AbBaseFactory

/**
 *  这里为了做演示所以直接返回nil, 但在实际的项目当中, 基本上不会直接拿基类的, 应该让它崩掉.
 */
- (AbBaseCar *)createCar {
    return nil;
}

@end
