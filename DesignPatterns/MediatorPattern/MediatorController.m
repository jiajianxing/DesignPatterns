//
//  ViewController.m
//  MediatorPattern
//
//  Created by 贾 on 2019/4/26.
//  Copyright © 2019 GTYK. All rights reserved.
//

#import "MediatorController.h"
#import "Colleague/ConcreteColleague2.h"
#import "Colleague/ConcreteColleague1.h"
#import "Mediator/ConcreteMediator.h"

@interface MediatorController ()

@end

@implementation MediatorController

- (void)viewDidLoad {
    [super viewDidLoad];
    ConcreteMediator *mediator = [[ConcreteMediator alloc] init];
    ConcreteColleague1 *c1 = (ConcreteColleague1 *)[ConcreteColleague1 colleageWithMediator:mediator];
    ConcreteColleague2 *c2 = (ConcreteColleague2 *)[ConcreteColleague2 colleageWithMediator:mediator];
    
    mediator.colleague2 = c2;
    mediator.colleague1 = c1;
    
    [c1 sendMessage:@"吃饭了吗"];
    [c2 sendMessage:@"没有呢?你打算请客吗"];
}


@end
