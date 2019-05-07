//
//  Mark.h
//  DesignPatterns
//
//  Created by 贾 on 2019/5/7.
//  Copyright © 2019 GTYK. All rights reserved.
//
#import <UIKit/UIKit.h>
#import "MarkVisitor.h"

@protocol Mark <NSObject>

/**/
@property (nonatomic,assign) CGPoint location;
/**/
@property (nonatomic,assign) CGSize size;
/**/
@property (nonatomic,strong) id<Mark> lastChild;

@optional
- (void)addMark:(id<Mark>)mark;

- (void)removeMark:(id<Mark>)mark;

- (void)acceptMarkVisitor:(id<MarkVisitor>)visitor;

@end
