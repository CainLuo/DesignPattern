//
//  GeneralMotorsFactory.h
//  FactoryPattern
//
//  Created by Cain on 17/8/16.
//  Copyright © 2016年 Cain. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BaseCar.h"

#import "BuickCar.h"
#import "GMCCar.h"
#import "CadillacCar.h"
#import "ChevroletCar.h"

typedef NS_ENUM(NSInteger, CarBrand) {
    kBuick = 0,
    kChevrolet,
    kGMC,
    kCadillac
};


@interface GeneralMotorsFactory : NSObject

+ (BaseCar <BaseCarProtocol> *)carFactoryWithCarType:(CarBrand)type;

@end
