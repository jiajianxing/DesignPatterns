//
//  Item.h
//  BuilderPattern
//
//  Created by 贾 on 2019/3/18.
//  Copyright © 2019年 GTYK. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Pack.h"

NS_ASSUME_NONNULL_BEGIN

@interface Item : NSObject
/**/
@property (nonatomic,strong) NSString *name;
/**/
@property (nonatomic,assign) float price;
/**/
@property (nonatomic,strong) Pack *pack;

@end

NS_ASSUME_NONNULL_END
