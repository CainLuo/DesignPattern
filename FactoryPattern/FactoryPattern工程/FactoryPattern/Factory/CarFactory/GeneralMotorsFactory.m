//
//  GeneralMotorsFactory.m
//  FactoryPattern
//
//  Created by Cain on 17/8/16.
//  Copyright © 2016年 Cain. All rights reserved.
//

#import "GeneralMotorsFactory.h"

@implementation GeneralMotorsFactory

+ (BaseCar <BaseCarProtocol> *)carFactoryWithCarType:(CarBrand)type {
    
    BaseCar <BaseCarProtocol> *car = nil;
    
    switch (type) {
        case kBuick:
            
            car = [[BuickCar alloc] init];
            
            break;
        case kChevrolet:
            
            car = [[ChevroletCar alloc] init];
            
            break;
        case kGMC:
            
            car = [[GMCCar alloc] init];

            break;
        case kCadillac:
            
            car = [[CadillacCar alloc] init];

            break;
            
        default:
            break;
    }
    
    return car;
}

@end
