//
//  MyClass.m
//  ex_MyClass
//
//  Created by yoshiyuki oshige on 2013/08/15.
//  Copyright (c) 2013年 yoshiyuki. All rights reserved.
//

#import "MyClass.h"

@implementation MyClass
//helloメソッドの定義
- (NSString *)hello:(NSString *)who
{
    NSString *msg = [NSString stringWithFormat:@"ハロー、%@の%@さん", _where, who];
    return msg;
}

@end
