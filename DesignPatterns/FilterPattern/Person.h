//
//  Person.h
//  FilterPattern
//
//  Created by 贾 on 2019/3/21.
//  Copyright © 2019年 GTYK. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef NS_OPTIONS(NSUInteger, GenderType){
   GenderTypeMen,
   GenderTypeWomen,
};

typedef NS_OPTIONS(NSUInteger, MarriedStatus){
    MarriedStatused,
    MarriedStatusNone,
};

NS_ASSUME_NONNULL_BEGIN

@interface Person : NSObject
/**/
@property (nonatomic,strong) NSString *name;
/**/
@property (nonatomic,assign) GenderType genderType;
/**/
@property (nonatomic,assign) MarriedStatus marital;

+ (Person *)personWithName:(NSString *)name
                    gender:(GenderType )genderType
                   married:(MarriedStatus)marital;

@end

NS_ASSUME_NONNULL_END
