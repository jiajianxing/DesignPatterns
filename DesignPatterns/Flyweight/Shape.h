//
//  Shape.h
//  DesignPatterns
//
//  Created by 贾 on 2019/4/8.
//  Copyright © 2019 GTYK. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Shape : NSObject
/**/
@property (nonatomic,strong) NSString *shapeName;

- (void)shapeShowColor:(NSString *)color;

@end

NS_ASSUME_NONNULL_END
