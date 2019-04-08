//
//  ViewController.m
//  FacadePattern
//
//  Created by 贾 on 2019/4/4.
//  Copyright © 2019年 GTYK. All rights reserved.
//

#import "FacadeController.h"
#import "Facade.h"

@interface FacadeController ()

@end

@implementation FacadeController

- (void)viewDidLoad {
    [super viewDidLoad];
    Facade *facade = [Facade new];
    [facade test];
}


@end
