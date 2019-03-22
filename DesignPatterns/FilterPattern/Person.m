//
//  Person.m
//  FilterPattern
//
//  Created by 贾 on 2019/3/21.
//  Copyright © 2019年 GTYK. All rights reserved.
//

#import "Person.h"

@implementation Person

+ (Person *)personWithName:(NSString *)name
                    gender:(GenderType )genderType
                   married:(MarriedStatus)marital
{
    Person *person = [[Person alloc] init];
    person.name = name;
    person.genderType = genderType;
    person.marital = marital;
    return person;
}

@end
