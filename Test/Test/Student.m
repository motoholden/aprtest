//
//  Student.m
//  Test
//
//  Created by okada-mac on 2014/11/14.
//  Copyright (c) 2014年 okada-mac. All rights reserved.
//

#import "Student.h"

@implementation Student

//get school
- (NSString *)school{
    return _school;
}
//set school
- (void)setSchool:(NSString *)school{
    _school = school;
}
//自己紹介(名前と学校名を表示)
- (void)introduceMyself{
    NSLog(@"My name is %@, School is %@", [self name], [self school]);
}
@end
