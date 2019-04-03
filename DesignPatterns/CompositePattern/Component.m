//
//  Component.m
//  CompositePattern
//
//  Created by 贾 on 2019/3/28.
//  Copyright © 2019年 GTYK. All rights reserved.
//

#import "Component.h"

@implementation Component

- (void)printStruct:(NSString *)preStr
{
    NSLog(@"%@",preStr);
}

- (void)addChild:(Component *)child
{
    
}

- (void)removeChild:(Component *)child
{
    
}

- (Component *)getChild:(NSInteger)index
{
    return nil;
}
- (NSArray <Component *>*)getChildren
{
    return nil;
}

@end
