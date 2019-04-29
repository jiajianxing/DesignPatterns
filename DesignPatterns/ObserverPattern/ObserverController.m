//
//  ObserverPattern
//
//  Created by 贾 on 2019/4/29.
//  Copyright © 2019 GTYK. All rights reserved.
//

#import "ObserverController.h"
#import "Observer/SubscribeCenter.h"
#import "Animal.h"

@interface ObserverController ()<SubscribeCenterProtocol>

@end

@implementation ObserverController

static NSString *GTSubscrip = @"GTSubscrip";
- (void)viewDidLoad {
    [super viewDidLoad];
    Animal *animal = [Animal new];
    [SubscribeCenter addCustomer:self subscription:GTSubscrip];
    [SubscribeCenter addCustomer:animal subscription:GTSubscrip];
    [SubscribeCenter sendMessage:@"消息-订阅" toSubscription:GTSubscrip];
}

- (void)subscribeMessage:(id)message subscription:(NSString *)subscription
{
    NSLog(@"controller %@",message);
}
@end
