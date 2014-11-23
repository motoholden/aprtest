//
//  ViewController.m
//  ex_IBAction2
//
//  Created by yoshiyuki oshige on 2013/08/12.
//  Copyright (c) 2013年 yoshiyuki. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
- (IBAction)updateValue:(UISlider *)sender;

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


- (IBAction)updateValue:(UISlider *)sender {
    NSLog(@"%.1f %%", sender.value * 100);
}
@end
