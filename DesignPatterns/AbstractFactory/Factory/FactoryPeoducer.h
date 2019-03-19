//
//  FactoryPeoducer.h
//  AbstractFactory
//
//  Created by 贾 on 2019/3/18.
//  Copyright © 2019年 GTYK. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AbStractFactory.h"



typedef NS_OPTIONS(NSUInteger, FactoryType){
  FactoryTypeShape,
  FactoryTypeColor,
};
NS_ASSUME_NONNULL_BEGIN

@interface FactoryPeoducer : NSObject

+ (AbStractFactory *)getFactory:(FactoryType)factoryType;

@end

NS_ASSUME_NONNULL_END
