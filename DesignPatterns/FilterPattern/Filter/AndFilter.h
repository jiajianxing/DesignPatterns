//
//  AndFilter.h
//  FilterPattern
//
//  Created by 贾 on 2019/3/21.
//  Copyright © 2019年 GTYK. All rights reserved.
//

#import "Filter.h"

NS_ASSUME_NONNULL_BEGIN

@interface AndFilter : Filter

- (void)andFilter:(Filter *)filter otherFilter:(Filter *)otherFilter;

@end

NS_ASSUME_NONNULL_END
