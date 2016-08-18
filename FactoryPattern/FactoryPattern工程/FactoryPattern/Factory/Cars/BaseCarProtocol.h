//
//  BaseCarProtocol.h
//  FactoryPattern
//
//  Created by Cain on 17/8/16.
//  Copyright © 2016年 Cain. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol BaseCarProtocol <NSObject>

@required
- (void)accelerate;
- (void)decelerate;

@end
