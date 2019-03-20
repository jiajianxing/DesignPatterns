//
//  ViewController.m
//  BridgePattern
//
//  Created by 贾 on 2019/3/20.
//  Copyright © 2019年 GTYK. All rights reserved.
//

#import "BridgeController.h"
#import "AbstractMessage.h"
#import "MessageSMS.h"
#import "MessageEmail.h"
#import "CommonMessage.h"
#import "UrgencyMessage.h"

@interface BridgeController ()

@end

@implementation BridgeController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    MessageSMS *smsMsg =[[MessageSMS alloc] init];
    MessageEmail *emailMsg =[[MessageEmail alloc] init];
    
    CommonMessage *commonMessage = [[CommonMessage alloc] init];
    [commonMessage abstractMessage:smsMsg];
    [commonMessage sendMessage:@"123" toUser:@"王军"];
    [commonMessage abstractMessage:emailMsg];
    [commonMessage sendMessage:@"234" toUser:@"李四"];
    
    UrgencyMessage *urgencyMessage = [[UrgencyMessage alloc] init];
    [urgencyMessage abstractMessage:emailMsg];
    [urgencyMessage sendMessage:@"你好" toUser:@"张三"];
    
}


@end
