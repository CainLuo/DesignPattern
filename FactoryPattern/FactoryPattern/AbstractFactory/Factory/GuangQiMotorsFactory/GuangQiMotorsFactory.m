//
//  GuangQiMotorsFactory.m
//  FactoryPattern
//
//  Created by Cain on 18/8/16.
//  Copyright © 2016年 Cain. All rights reserved.
//

#import "GuangQiMotorsFactory.h"
#import "Camry.h"

@implementation GuangQiMotorsFactory

- (AbBaseCar *)createCar {
    return [[Camry alloc] init];
}

@end
