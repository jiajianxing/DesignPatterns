//
//  Form.h
//  DesignPatterns
//
//  Created by 贾 on 2019/3/19.
//  Copyright © 2019年 GTYK. All rights reserved.
//

#import <UIKit/UIKit.h>
@protocol Form <NSObject,NSCopying>

/**/
@property (nonatomic,copy) NSString  *name;
/**/
@property (nonatomic,copy) NSString *address;
/**/
@property (nonatomic,strong) NSMutableArray *relatedForm;

- (void)addForm:(id)form;

- (id)copy;

- (void)printSelf;

@end
