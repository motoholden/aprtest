//
//  ViewController.h
//  TestAnything
//
//  Created by okada-mac on 2014/11/22.
//  Copyright (c) 2014年 okada-mac. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController


//プロパティ宣言
@property (assign) NSInteger counter;

//メソッド宣言
- (NSString *)fullname:(NSString *) sei lastName:(NSString *) mei;
- (void)countUP;

@end

