//
//  Component.h
//  CompositePattern
//
//  Created by 贾 on 2019/3/28.
//  Copyright © 2019年 GTYK. All rights reserved.
//

#import <Foundation/Foundation.h>


NS_ASSUME_NONNULL_BEGIN
//组件对象
@interface Component : NSObject
/*记录组件对象的父组件对象*/
@property (nonatomic,strong) Component *parent;

- (void)printStruct:(NSString *)preStr;


- (void)addChild:(Component *)child;

- (void)removeChild:(Component *)child;

- (Component *)getChild:(NSInteger)index;

//获取包含子组件对象的方法
- (NSArray <Component *>*)getChildren;

@end

NS_ASSUME_NONNULL_END
