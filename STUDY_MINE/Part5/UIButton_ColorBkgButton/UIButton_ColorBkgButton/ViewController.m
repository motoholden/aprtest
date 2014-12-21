//
//  ViewController.m
//  UIButton_ColorBkgButton
//
//  Created by okada-mac on 2014/12/21.
//  Copyright (c) 2014年 okada-mac. All rights reserved.
//

#import "ViewController.h"
#import "ColorBkgButton.h"

#define RGBA(r, g, b, a) [UIColor colorWithRed:r/255.0 green:g/255.0 blue:b/255.0 alpha:a]

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    //カラーボタンを作る
    ColorBkgButton *button1 = [[ColorBkgButton alloc] initWithFrame:CGRectMake(50, 50, 120, 30)
                                                              label:@"test"
                                                              bkgcolor:RGBA(200, 200, 50, 1.0)];
    ColorBkgButton *button2 = [[ColorBkgButton alloc] initWithFrame:CGRectMake(50, 100, 120, 30)
                                                              label:@"okada"
                                                               bkgcolor:RGBA(100, 100, 150, 1.0)];
    [self.view addSubview:button1];
    [self.view addSubview:button2];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
