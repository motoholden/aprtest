//
//  ViewController.m
//  Okada2
//
//  Created by okada-mac on 2014/11/15.
//  Copyright (c) 2014年 okada-mac. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    NSLog(@"okamoto2");
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//ページを閉じる(戻るとき)
- (IBAction)motoka:(UIStoryboardSegue *)segue{
    NSLog(@"motohiroorroro");
}

@end
