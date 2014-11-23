//
//  ViewController.m
//  Okadafouth
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

- (IBAction)button:(id)sender {
    NSDateFormatter *okada = [[NSDateFormatter alloc] init];
    [okada setDateFormat:@"HH:mm:ss"];
    NSDate *now = [NSDate date];
    self.label.text = [okada stringFromDate:now];
}

- (IBAction)button2:(id)sender {
//    self.label.text = @"motohiro";
}
@end
