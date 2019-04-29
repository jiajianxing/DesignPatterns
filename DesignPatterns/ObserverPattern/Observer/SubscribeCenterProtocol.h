//
//  subscribeCenterProtocol.h
//  DesignPatterns
//
//  Created by 贾 on 2019/4/29.
//  Copyright © 2019 GTYK. All rights reserved.
//
@protocol SubscribeCenterProtocol <NSObject>

@required
- (void)subscribeMessage:(id)message subscription:(NSString *)subscription;

@end
