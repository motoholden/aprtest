//
//  ViewController.m
//  insertAboveBelow
//
//  Created by okada-mac on 2014/11/24.
//  Copyright (c) 2014年 okada-mac. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
//イメージビュー
@property (weak, nonatomic) IBOutlet UIImageView *photo;
@property (weak, nonatomic) IBOutlet UIImageView *sakura;

//セグメンテーションコントロール
- (IBAction)valueChanged:(UISegmentedControl *)sender;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//セグメントコントロールで写真の重なりを変更する
- (IBAction)valueChanged:(UISegmentedControl *)sender {
    switch (sender.selectedSegmentIndex) {
        case 0:
            [self.view insertSubview:_photo belowSubview:_sakura];
            break;
        case 1:
            [self.view insertSubview:_photo aboveSubview:_sakura];
            break;
    }
}
@end
