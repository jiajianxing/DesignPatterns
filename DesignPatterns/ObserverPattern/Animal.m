//
//  Animal.m
//  ObserverPattern
//
//  Created by 贾 on 2019/4/29.
//  Copyright © 2019 GTYK. All rights reserved.
//

#import "Animal.h"

@implementation Animal

- (void)subscribeMessage:(id)message subscription:(NSString *)subscription
{
    NSLog(@"animal %@",message);
}
@end
