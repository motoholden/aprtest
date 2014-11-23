//
//  ViewController.m
//  ex_SingleView
//
//  Created by yoshiyuki oshige on 2013/08/11.
//  Copyright (c) 2013年 yoshiyuki. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    //fullName:メソッドのテスト
    NSString *name = [self fullName:@"西浜" lastName:@"波子"];
    NSLog(@"フルネームは %@", name);
    
    //countUp:メソッドのテスト（３回実行）
    [self countUp];
    [self countUp];
    [self countUp];
    NSLog(@"カウンターは %d", _counter);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//フルネームを作る
- (NSString *)fullName:(NSString *)sei lastName:(NSString *)mei
{
    NSString *sei_mei = [NSString stringWithFormat:@"%@ %@", sei, mei];
    return sei_mei;
}

//counterプロパティをカウントアップする
- (void)countUp
{
    _counter++;
}

@end
