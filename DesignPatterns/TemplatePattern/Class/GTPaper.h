//
//  GTPaper.h
//  TemplatePattern
//
//  Created by 贾 on 2019/4/30.
//  Copyright © 2019 GTYK. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface GTPaper : NSObject
/**/
@property (nonatomic,strong) NSString *answer;
//题目1
- (void)subject1;
//题目2
- (void)subject2;

@end

NS_ASSUME_NONNULL_END
