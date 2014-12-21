//
//  ColorBkgButton.h
//  UIButton_ColorBkgButton
//
//  Created by okada-mac on 2014/12/21.
//  Copyright (c) 2014年 okada-mac. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ColorBkgButton : UIButton

//イニシャライザを宣言する
- (id)initWithFrame:(CGRect)frame label:(NSString *)title bkgcolor:(UIColor *)rgba;

@end
