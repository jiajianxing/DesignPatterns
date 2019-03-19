//
//  SchoolForm.m
//  PrototypePattern
//
//  Created by 贾 on 2019/3/19.
//  Copyright © 2019年 GTYK. All rights reserved.
//

#import "SchoolForm.h"


@interface SchoolForm ()


@end

@implementation SchoolForm
@synthesize name;
@synthesize address;
@synthesize relatedForm;

- (instancetype)init:(NSString *)name address:(NSString *)address
{
    self = [super init];
    if (self) {
        self.name = name;
        self.address = address;
        self.relatedForm = [[NSMutableArray alloc] init];
    }
    return self;
}

- (void)printSelf
{
  NSLog(@"name=%@，address=%@", self.name, self.address);
}

- (void)addForm:(id)form
{
    [self.relatedForm addObject:form];
}

- (id)copyWithZone:(NSZone *)zone
{
    SchoolForm *form = [[[self class] allocWithZone:zone] init:self.name address:self.address];
    for (id<Form> tform in self.relatedForm) {
        [form.relatedForm addObject:[tform copy]];
    }
    return form;
}

@end
