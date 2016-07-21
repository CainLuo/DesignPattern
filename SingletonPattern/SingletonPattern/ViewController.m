//
//  ViewController.m
//  SingletonPattern
//
//  Created by Cain on 21/7/16.
//  Copyright © 2016年 Cain. All rights reserved.
//

#import "ViewController.h"
#import "UserInfoManagerCenter.h"
#import "SubUserInfoManagerCenter.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UserInfoManagerCenter *infoManagerCenter = [UserInfoManagerCenter managerCenter];
    UserInfoManagerCenter *managerCenter = [UserInfoManagerCenter managerCenter];

    UserInfoManagerCenter *userInfoManagerCenter = [[UserInfoManagerCenter alloc] init];
    
    SubUserInfoManagerCenter *subUserInfoManagerCenter = [SubUserInfoManagerCenter managerCenter];

    NSLog(@"%@", infoManagerCenter);
    NSLog(@"%@", managerCenter);
    NSLog(@"%@", userInfoManagerCenter);
    NSLog(@"%@", subUserInfoManagerCenter);
}

@end
