//
//  Student.h
//  Test
//
//  Created by okada-mac on 2014/11/14.
//  Copyright (c) 2014年 okada-mac. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"

//StudenクラスはPersonクラスを継承する
@interface Student : Person{
    //school
    NSString *_school;
}
//get school
- (NSString *)school;
//set school
- (void)setSchool:(NSString *)school;
@end

//@interface Student : NSObject

//@end
