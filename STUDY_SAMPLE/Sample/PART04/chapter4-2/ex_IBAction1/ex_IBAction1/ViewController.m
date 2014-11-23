//
//  ViewController.m
//  ex_IBAction1
//
//  Created by yoshiyuki oshige on 2013/08/12.
//  Copyright (c) 2013年 yoshiyuki. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UISlider *mySlider;
- (IBAction)updateValue:(id)sender;

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

- (IBAction)updateValue:(id)sender {
    NSLog(@"%.1f %%", _mySlider.value * 100);
}
@end
