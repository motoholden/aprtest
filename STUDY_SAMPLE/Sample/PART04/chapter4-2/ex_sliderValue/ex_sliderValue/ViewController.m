//
//  ViewController.m
//  ex_sliderValue
//
//  Created by yoshiyuki oshige on 2013/08/13.
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
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//ラベルにスライダーの値（sender.value）を表示する
- (IBAction)updateValue:(UISlider *)sender {
    _valueLabel.text = [NSString stringWithFormat:@"%.2f", sender.value];
}

@end
