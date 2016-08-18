//
//  ViewController.m
//  FactoryPattern
//
//  Created by Cain on 17/8/16.
//  Copyright © 2016年 Cain. All rights reserved.
//

#import "ViewController.h"
#import "GeneralMotorsFactory.h"
#import "FactoryManager.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    BuickCar *buickCar = (BuickCar *)[GeneralMotorsFactory carFactoryWithCarType:kBuick];
    
    [buickCar thick];
    
    
    
    
    AbBaseFactory *factoryManager = [FactoryManager factoryWithBrand:kChangAnMotorsFactory];
    
    AbBaseCar *car = [factoryManager createCar];
    
    NSLog(@"Car is:%@", car);

}

@end
