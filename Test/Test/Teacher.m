//
//  Teacher.m
//  Test
//
//  Created by okada-mac on 2014/11/14.
//  Copyright (c) 2014年 okada-mac. All rights reserved.
//

#import "Teacher.h"

@implementation Teacher 
//get subject
- (NSString *)subject{
    return _subject;
}
//set subject
- (void)setSubject:(NSString *)subject{
    _subject = subject;
}
//introduce (Personクラスを継承しているから)
- (void)introduceMyself{
    //name and subject
    NSLog(@"My name is %@ Subject is %@", [self name], [self subject]);
}
@end
