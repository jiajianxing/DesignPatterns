//
//  MarkVisitor.h
//  DesignPatterns
//
//  Created by 贾 on 2019/5/7.
//  Copyright © 2019 GTYK. All rights reserved.
//

@protocol  Mark;
@class Dot,Vertex,Stroke;
@protocol MarkVisitor <NSObject>

- (void)visitMark:(id<Mark>)mark;

- (void)visitDot:(Dot *)dot;

- (void)visitVertex:(Vertex *)vertex;

- (void)visitStroke:(Stroke *)stroke;

@end
