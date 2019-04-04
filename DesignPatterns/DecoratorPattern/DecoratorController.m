//
//  ViewController.m
//  DecoratorPattern
//
//  Created by 贾 on 2019/4/3.
//  Copyright © 2019年 GTYK. All rights reserved.
//

#import "DecoratorController.h"
#import "Pancake(不用模式的实现)/Pancake.h"
#import "Decorator/EggDecorator.h"
#import "Decorator/HamDecorator.h"
#import "Decorator/LettDecorator.h"
#import "IPA/IPancake.h"

@interface DecoratorController ()

@end

@implementation DecoratorController

- (void)viewDidLoad {
    [super viewDidLoad];
//    Pancake *pancake = [[Pancake alloc] init];
//    [pancake cookPancakeWithEgg:YES ham:NO lettuce:YES];
    
    //先创建基本的煎饼对象,这也是被装饰的对象
    AbPancake *ipancake = [[IPancake alloc] init];
    AbPancake *egg = [EggDecorator decoratorWithComponent:ipancake];
    AbPancake *ham = [HamDecorator decoratorWithComponent:egg];
    [ham cook];
}


@end
