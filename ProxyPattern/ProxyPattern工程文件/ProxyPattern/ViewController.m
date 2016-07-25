//
//  ViewController.m
//  ProxyPattern
//
//  Created by Cain on 23/7/16.
//  Copyright © 2016年 Cain. All rights reserved.
//

#import "ViewController.h"
#import "AudiManufacturer.h"
#import "Customer.h"

@interface ViewController () <AudiManufacturerDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    AudiManufacturer *audiManufacturer = [[AudiManufacturer alloc] init];
    
    audiManufacturer.delegate = self;
    
    [audiManufacturer buyCarCount:2];
    [audiManufacturer buyCarModel:@"Q7"];
    
    Customer *customer = [[Customer alloc] init];
    
    NSString *string = [customer isEnoughBuyCar:1000000];
    
    NSLog(@"%@", string);
}

#pragma mark - 必须实现的方法
- (void)audiManufacturer:(AudiManufacturer *)audiManufacturer
           orderQuantity:(NSInteger)orderQuantity {
    
    NSLog(@"奥迪生产商为: %@", audiManufacturer);
    NSLog(@"购买的数量为: %zd", orderQuantity);
}

#pragma mark - 可选实现的方法
- (void)audiManufacturer:(AudiManufacturer *)audiManufacturer
        audiDelegateInfo:(NSString *)audiDelegateInfo {
    
    NSLog(@"奥迪生产商为: %@", audiManufacturer);
    NSLog(@"购买的型号为: %@", audiDelegateInfo);
}

@end
