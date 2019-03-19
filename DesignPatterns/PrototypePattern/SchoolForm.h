//
//  SchoolForm.h
//  PrototypePattern
//
//  Created by 贾 on 2019/3/19.
//  Copyright © 2019年 GTYK. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Form.h"
NS_ASSUME_NONNULL_BEGIN

@interface SchoolForm : NSObject<Form>

- (instancetype)init:(NSString *)name address:(NSString *)address;

@end

NS_ASSUME_NONNULL_END
