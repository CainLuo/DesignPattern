//
//  ViewController.m
//  ObserverPattern
//
//  Created by Cain on 23/8/16.
//  Copyright © 2016年 Cain. All rights reserved.
//

#import "ViewController.h"
#import "PublicNumberCenter.h"

@interface ViewController () <PublicNumberProtocol>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    PublicNumberCenter *publicNumberCenter = [PublicNumberCenter managerCenter];
    
    NSString *publicNumber = @"今日日报";
    
    [publicNumberCenter createPublicNumber:publicNumber];
    [publicNumberCenter addUser:self withPublicNumber:publicNumber];
    [publicNumberCenter sendMessage:@"V1.0" toPublicNumber:publicNumber];
}


- (void)publicNumberMessage:(id)message
         publicNumberNumber:(NSString *)publicNumber {
    
    NSLog(@"Message: %@, Public Number: %@", message, publicNumber);
}

@end
