//
//  Composite.m
//  CompositePattern
//
//  Created by 贾 on 2019/3/28.
//  Copyright © 2019年 GTYK. All rights reserved.
//

#import "Composite.h"

@interface Composite()
/**/
@property (nonatomic,strong) NSMutableArray *childComponts;
/**/
@property (nonatomic,strong) NSString *name;

@end

@implementation Composite

+ (instancetype)compositeWithName:(NSString *)name
{
    Composite *composite = [[Composite alloc] init];
    composite.name = name;
    return composite;
}

- (void)printStruct:(NSString *)preStr
{
    //先把自己输出去
    NSLog(@"%@",[NSString stringWithFormat:@"%@-%@",preStr,self.name]);
    //如果还包含有子组件，那么就输出这些子组件对象
    if (self.childComponts.count>0) {
        preStr = [preStr stringByAppendingString:@" "];
        for (Component *c in self.childComponts) {
            [c printStruct:preStr];
        }
    }
}

- (void)addChild:(Component *)child
{
    if (!self.childComponts) {
        self.childComponts = [NSMutableArray array];
    }
    [self.childComponts addObject:child];
    child.parent = self;
}

- (void)removeChild:(Component *)child
{
    if (self.childComponts.count > 0) {
        NSInteger index = [self.childComponts indexOfObject:child];
        if (index != -1) {
            for (Component *component in child.getChildren) {
                component.parent = self;
                [self.childComponts addObject:component];
            }
            [self.childComponts removeObject:child];
        }
    }
}

- (NSArray<Component *> *)getChildren
{
    return self.childComponts;
}

@end
