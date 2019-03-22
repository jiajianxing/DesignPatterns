//
//  Criteria.h
//  FilterPattern
//
//  Created by 贾 on 2019/3/21.
//  Copyright © 2019年 GTYK. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"

NS_ASSUME_NONNULL_BEGIN

@interface Filter : NSObject

- (NSArray <Person *>*)filter:(NSArray <Person *>*)persons;

@end

NS_ASSUME_NONNULL_END
