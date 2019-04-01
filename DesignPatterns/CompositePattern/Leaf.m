//
//  Leaf.m
//  CompositePattern
//
//  Created by 贾 on 2019/3/28.
//  Copyright © 2019年 GTYK. All rights reserved.
//

#import "Leaf.h"

@interface Leaf()
/**/
@property (nonatomic,strong) NSString *name;

@end

@implementation Leaf

+ (instancetype)leafWithName:(NSString *)name
{
    Leaf *leaf = [[Leaf alloc] init];
    leaf.name = name;
    return leaf;
}
- (void)printStruct:(NSString *)preStr
{
    NSLog(@"%@",[NSString stringWithFormat:@"%@-%@",preStr,self.name]);
}


@end
