//
//  CommandPattern
//
//  Created by 贾 on 2019/4/11.
//  Copyright © 2019 GTYK. All rights reserved.
//

#import "CommandController.h"
#import "Receiver.h"
#import "Invoker.h"
#import "LighterCommand.h"
#import "DarkerCommand.h"

typedef enum : NSUInteger {
    
    kAddButtonTag = 10,
    kDelButtonTag,
    
} ViewControllerEnumValue;

@interface CommandController ()

@property (nonatomic, strong) UIButton *addButton;
@property (nonatomic, strong) UIButton *delButton;

/**
 *  客户端接收器
 */
@property (nonatomic, strong) Receiver *reciver;
/**/
@property (nonatomic,strong) Invoker *invoker;

@end

@implementation CommandController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self initButtons];
    // 创建客户端接收器
    self.reciver           = [[Receiver alloc] init];
    [self.reciver bindView:self.view];
}

- (void)buttonsEvent:(UIButton *)button {
    
    if (button.tag == kAddButtonTag) {
        //不使用命令模式
//        [self.reciver makeViewLighter:0.1];
        //使用命令模式
        LighterCommand *command = [[LighterCommand alloc] initWithReceiver:self.reciver parameter:0.1];
        [[Invoker shareInstance] addAndExcute:command];
    } else if (button.tag == kDelButtonTag) {
        //不使用命令模式
//        [self.reciver makeViewDarker:0.1];
        //使用命令模式
        // 生成命令
        DarkerCommand *command = [[DarkerCommand alloc] initWithReceiver:self.reciver parameter:0.2];
        // 执行命令
        [[Invoker shareInstance] addAndExcute:command];
    }
}

- (void)backAction
{
    [[Invoker shareInstance] rollBackAndExcute];
}

#pragma mark - 无关初始化
- (void)initButtons {
    
    // delButton
    self.delButton     = [[UIButton alloc] initWithFrame:CGRectMake(10, 100, 30, 30)];
    
    self.delButton.tag               = kDelButtonTag;
    self.delButton.layer.borderWidth = 1.f;
    
    [self.delButton setTitle:@"-"
                    forState:UIControlStateNormal];
    
    [self.delButton setTitleColor:[UIColor redColor]
                         forState:UIControlStateNormal];
    
    [self.delButton addTarget:self
                       action:@selector(buttonsEvent:)
             forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:self.delButton];
    
    // addButton
    self.addButton     = [[UIButton alloc] initWithFrame:CGRectMake(10 + 100, 100, 30, 30)];
    
    self.addButton.tag               = kAddButtonTag;
    self.addButton.layer.borderWidth = 1.f;
    
    [self.addButton setTitle:@"+"
                    forState:UIControlStateNormal];
    
    [self.addButton setTitleColor:[UIColor redColor]
                         forState:UIControlStateNormal];
    
    [self.addButton addTarget:self
                       action:@selector(buttonsEvent:)
             forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:self.addButton];
    
    
    UIButton *backBtn = [[UIButton alloc] initWithFrame:CGRectMake(100, 200, 50, 50)];
    [backBtn setTitle:@"撤销" forState:UIControlStateNormal];
    [backBtn setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    [backBtn addTarget:self action:@selector(backAction) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:backBtn];
}

@end
