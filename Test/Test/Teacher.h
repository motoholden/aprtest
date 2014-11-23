//
//  Teacher.h
//  Test
//
//  Created by okada-mac on 2014/11/14.
//  Copyright (c) 2014年 okada-mac. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"

@interface Teacher : Person {
    //教科
    NSString *_subject;
}
//get subject
- (NSString *)subject;
//set subject
- (void)setSubject:(NSString *)subject;
@end
