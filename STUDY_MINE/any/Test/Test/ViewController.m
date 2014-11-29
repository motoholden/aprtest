//
//  ViewController.m
//  Test
//
//  Created by okada-mac on 2014/11/29.
//  Copyright (c) 2014年 okada-mac. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
//    NSArray *okada = @[@"10", @"20"];
    NSDictionary *okada = [NSDictionary dictionaryWithObjectsAndKeys:
                           @"okada", @"abc",
                           @"moto",  @"def",
                           nil];
    NSString *test = [okada objectForKey:@"abc"];
    NSLog(@"%@", test);


}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
