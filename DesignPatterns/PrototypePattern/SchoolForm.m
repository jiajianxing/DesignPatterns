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
    //使用[self class]是因为我们希望其子类也能够复用这个复制方法,要是直接使用[SchoolForm class],其子类就只会返回SchoolForm而不是它的实际类型的副本
    SchoolForm *form = [[[self class] allocWithZone:zone] init:self.name address:self.address];
    for (id<Form> tform in self.relatedForm) {
        [form.relatedForm addObject:[tform copy]];
    }
    return form;
}

@end
