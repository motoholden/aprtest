//
//  Person.h
//  Test
//
//  Created by okada-mac on 2014/11/13.
//  Copyright (c) 2014年 okada-mac. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject
{
    NSInteger _age;
    
    Person *_father;
    
    NSString *_lastName;

    NSString *_firstName;
}
//get age
- (NSInteger)age;
//set age
- (void)setAge:(NSInteger)age;
//father取得
- (Person *)father;
//father設定
- (void)setFather:(Person *)father;

//set lastName
- (void)setLastName:(NSString *)lastName;
//set firstName
- (void)setFirstName:(NSString *)firstName;
// get name (firstName + lastName)
- (NSString *)name;
//introduce
-(void)introduceMyself;
@end
