//
//  AudiCustomerProtocol.h
//  ProxyPattern
//
//  Created by Cain on 25/7/16.
//  Copyright © 2016年 Cain. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol AudiCustomerProtocol <NSObject>

@required
- (NSString *)isEnoughBuyCar:(NSInteger)money;

@end
