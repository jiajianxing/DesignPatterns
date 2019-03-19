//
//  ViewController.m
//  PrototypePattern
//
//  Created by 贾 on 2019/3/19.
//  Copyright © 2019年 GTYK. All rights reserved.
//

#import "PrototyVC.h"
#import "SchoolForm.h"

@interface PrototyVC ()

@end

@implementation PrototyVC

- (void)viewDidLoad {
    [super viewDidLoad];
    SchoolForm *schoolForm1 = [[SchoolForm alloc] init:@"清华大学" address:@"北京"];
    SchoolForm *schoolForm2 = [[SchoolForm alloc] init:@"北京大学" address:@"北京"];
    [schoolForm1 addForm:schoolForm2];
    
    SchoolForm *copySchool = [schoolForm1 copy];
    
    NSLog(@"%@",copySchool);
}


@end
