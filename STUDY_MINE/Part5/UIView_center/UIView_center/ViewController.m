//
//  ViewController.m
//  UIView_center
//
//  Created by okada-mac on 2014/11/30.
//  Copyright (c) 2014年 okada-mac. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UIImageView *flower;

- (IBAction)move:(id)sender;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    NSLog(@"x %.f:", _flower.center.x);
    NSLog(@"y %.f:", _flower.center.y);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)move:(id)sender {
    //花を(200. 100)に移動する
    CGPoint pt = CGPointMake(200,100);
    
    _flower.center = pt;
    NSLog(@"x %.f:", _flower.center.x);
    NSLog(@"y %.f:", _flower.center.y);
}
@end
