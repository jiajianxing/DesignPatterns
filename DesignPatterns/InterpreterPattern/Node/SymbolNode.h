//
//  SymbolNode.h
//  InterpreterPattern
//
//  Created by 贾 on 2019/4/16.
//  Copyright © 2019 GTYK. All rights reserved.
//

#import "Node.h"

NS_ASSUME_NONNULL_BEGIN

@interface SymbolNode : Node
/**/
@property (nonatomic,strong) Node *leftN;
/**/
@property (nonatomic,strong) Node *rightN;

+ (instancetype)symbolNodeWithLeft:(Node *)left right:(Node *)right;

@end

NS_ASSUME_NONNULL_END
