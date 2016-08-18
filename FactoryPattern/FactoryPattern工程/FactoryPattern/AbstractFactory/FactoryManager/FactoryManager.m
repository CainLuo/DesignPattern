//
//  FactoryManager.m
//  FactoryPattern
//
//  Created by Cain on 18/8/16.
//  Copyright © 2016年 Cain. All rights reserved.
//

#import "FactoryManager.h"

@implementation FactoryManager

+ (AbBaseFactory *)factoryWithBrand:(FactoryType)factoryType {
    
    AbBaseFactory *factory = nil;
    
    switch (factoryType) {
        case kChangAnMotorsFactory:
            
            factory = [[ChangAnMotorsFactory alloc] init];
            
            break;
        case kGuangQiMotorsFactory:
            
            factory = [[GuangQiMotorsFactory alloc] init];
            
            break;
        default:
            break;
    }
    
    return factory;
}

@end
