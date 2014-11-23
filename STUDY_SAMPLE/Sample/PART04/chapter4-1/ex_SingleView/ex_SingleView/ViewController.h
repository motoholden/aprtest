//
//  ViewController.h
//  ex_SingleView
//
//  Created by yoshiyuki oshige on 2013/08/11.
//  Copyright (c) 2013年 yoshiyuki. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

//プロパティ宣言
@property (assign) NSInteger counter;
//メソッド宣言
- (NSString *)fullName:(NSString *)sei lastName:(NSString *)mei;
- (void)countUp;

@end
