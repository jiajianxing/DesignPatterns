//
//  ProxyPattern
//
//  Created by 贾 on 2019/4/8.
//  Copyright © 2019 GTYK. All rights reserved.
//

#import "ProxyController.h"
#import "Entrust.h"

@interface ProxyController ()<GTProxy>

@end

@implementation ProxyController

- (void)viewDidLoad {
    [super viewDidLoad];
    Entrust *entrust = [[Entrust alloc] init];
    entrust.delegate = self;
    [entrust entrustToSomeBody];
}

- (void)sayHello
{
    NSLog(@"你好");
}


@end
