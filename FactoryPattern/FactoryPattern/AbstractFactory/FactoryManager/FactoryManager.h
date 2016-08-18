//
//  FactoryManager.h
//  FactoryPattern
//
//  Created by Cain on 18/8/16.
//  Copyright © 2016年 Cain. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "GuangQiMotorsFactory.h"
#import "ChangAnMotorsFactory.h"
#import "AbBaseFactory.h"

typedef NS_ENUM(NSInteger, FactoryType) {
    kChangAnMotorsFactory = 0,
    kGuangQiMotorsFactory
};

@interface FactoryManager : NSObject

/**
 *  获取对应的工厂
 *
 *  @param factoryType 工厂类型
 *
 *  @return 对应的工厂
 */
+ (AbBaseFactory *)factoryWithBrand:(FactoryType)factoryType;

@end
