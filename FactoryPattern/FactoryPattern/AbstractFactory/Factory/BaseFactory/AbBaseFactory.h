//
//  AbBaseFactory.h
//  FactoryPattern
//
//  Created by Cain on 18/8/16.
//  Copyright © 2016年 Cain. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AbBaseCar.h"

@interface AbBaseFactory : NSObject

/**
 *  创建汽车
 *
 *  @return 汽车
 */
- (AbBaseCar *)createCar;

@end
