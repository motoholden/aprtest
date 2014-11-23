//
//  MyClass.m
//  ex_MyClass
//
//  Created by okada-mac on 2014/11/23.
//  Copyright (c) 2014年 okada-mac. All rights reserved.
//

#import "MyClass.h"

@implementation MyClass

//hello method
- (NSString *)hello:(NSString *)who {
    NSString *msg = [NSString stringWithFormat:@"hello %@の%@さん", _where, who];
    return msg;
}

@end
