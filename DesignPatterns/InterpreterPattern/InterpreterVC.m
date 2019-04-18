//
//  ViewController.m
//  InterpreterPattern
//
//  Created by 贾 on 2019/4/16.
//  Copyright © 2019 GTYK. All rights reserved.
//

#import "InterpreterVC.h"
#import "Node/ValueNode.h"
#import "Node/SymbolNode.h"
#import "Node/Node.h"
#import "Node/MulNode.h"
#import "Node/DivNode.h"
#import "Node/ModNode.h"

@interface InterpreterVC ()

@end

@implementation InterpreterVC

- (void)viewDidLoad {
    [super viewDidLoad];
    Node *left = nil;
    Node *right = nil;
    NSMutableArray *nodeArr = [NSMutableArray array];
    NSString *str = @"3 * 4 / 2 % 4";
    NSArray *stateArr = [str componentsSeparatedByString:@" "];
    for (int i = 0; i < stateArr.count; i++) {
        if ([stateArr[i] isEqualToString:@"*"]) {
            left = nodeArr.lastObject;
            int value = [stateArr[++i] intValue];
            right = [ValueNode valueNodeWithValue:value];
            [nodeArr addObject:[MulNode symbolNodeWithLeft:left right:right]];
        } else if ([stateArr[i] isEqualToString:@"/"]){
            left = nodeArr.lastObject;
            int value = [stateArr[++i] intValue];
            right = [ValueNode valueNodeWithValue:value];
            [nodeArr addObject:[DivNode symbolNodeWithLeft:left right:right]];
        }else if ([stateArr[i] isEqualToString:@"%"]){
            left = nodeArr.lastObject;
            int value = [stateArr[++i] intValue];
            right = [ValueNode valueNodeWithValue:value];
            [nodeArr addObject:[ModNode symbolNodeWithLeft:left right:right]];
        } else {
        int value = [stateArr[i] intValue];
            [nodeArr addObject:[ValueNode valueNodeWithValue:value]];
        }
    }
    SymbolNode *node = nodeArr.lastObject;
    NSLog(@"最终的值为%d",[node interpret]);
}


@end
