//
//  People.h
//  MementoPattern
//
//  Created by 贾 on 2019/4/28.
//  Copyright © 2019 GTYK. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MementoCenterProtocol.h"

NS_ASSUME_NONNULL_BEGIN

@interface People : NSObject<MementoCenterProtocol>
/**/
@property (nonatomic,strong) NSString *name;
/**/
@property (nonatomic,assign) NSInteger age;


@end

NS_ASSUME_NONNULL_END
