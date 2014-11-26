//
//  ViewController.m
//  addSubView
//
//  Created by motomac on 2014/11/27.
//  Copyright (c) 2014年 motomac. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    UIImage *imageData = [UIImage imageNamed:@"flower.png"];
    
    //イメージビュー作成
    CGRect rect = CGRectMake(0, 0, 200, 200);
    UIImageView *imageView =[[UIImageView alloc] initWithFrame:rect];
    imageView.image = imageData;
    imageView.contentMode = UIViewContentModeScaleAspectFit;
    //イメージビューにイメージ作成
    imageView.center = self.view.center;
    [self.view addSubview:imageView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
