//
//  Person.m
//  Test
//
//  Created by okada-mac on 2014/11/13.
//  Copyright (c) 2014年 okada-mac. All rights reserved.
//

#import "Person.h"

@implementation Person

//get age
- (NSInteger)age{
    return _age;
}
//set age
- (void)setAge:(NSInteger)age{
    _age = age;
}
//get father
- (Person *)father{
    return _father;
}
//set father
- (void)setFather:(Person *)father{
    _father = father;
}
//
//set lastName
- (void)setLastName:(NSString *)lastName{
    _lastName = lastName;
}
//set firstName;
- (void)setFirstName:(NSString *)firstName{
    _firstName = firstName;
}
//get Name (lastName + firstName)
- (NSString *)name{
    return [NSString stringWithFormat:@"%@ %@", _lastName, _firstName];
}
//introduce
- (void)introduceMyself{
    //コンソールに表示する
    NSLog(@"私の名前は%@です", [self name]);
}
@end
