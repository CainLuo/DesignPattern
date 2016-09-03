//
//  PublicNumberProtocol.h
//  ObserverPattern
//
//  Created by Cain on 4/9/16.
//  Copyright © 2016年 Cain. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol PublicNumberProtocol <NSObject>

@required
- (void)publicNumberMessage:(id)message
         publicNumberNumber:(NSString *)publicNumber;

@end