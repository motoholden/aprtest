//
//  ViewController.m
//  OkadaCounter
//
//  Created by okada-mac on 2014/11/16.
//  Copyright (c) 2014年 okada-mac. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

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


- (IBAction)increment:(id)sender {
    NSLog(@"Incremetが押された");
    total++;
    [screen setText:[NSString stringWithFormat:@"Total: %ld", (long)total]];
}

- (IBAction)decrement:(id)sender {
    NSLog(@"Decremetが押された");
    --total;
    [screen setText:[NSString stringWithFormat:@"Total: %ld", (long)total]];
}

- (IBAction)clear:(id)sender {
    total = 0;
    [screen setText:[NSString stringWithFormat:@"Total: %ld", (long)total]];
}
@end
