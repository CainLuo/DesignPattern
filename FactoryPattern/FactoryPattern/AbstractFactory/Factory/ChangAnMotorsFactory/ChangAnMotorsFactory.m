//
//  ChangAnMotorsFactory.m
//  FactoryPattern
//
//  Created by Cain on 18/8/16.
//  Copyright © 2016年 Cain. All rights reserved.
//

#import "ChangAnMotorsFactory.h"
#import "Axela.h"

@implementation ChangAnMotorsFactory

- (AbBaseCar *)createCar {
    return [[Axela alloc] init];
}

@end
