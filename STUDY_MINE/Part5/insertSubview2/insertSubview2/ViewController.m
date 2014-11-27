//
//  ViewController.m
//  insertSubview2
//
//  Created by okada-mac on 2014/11/27.
//  Copyright (c) 2014年 okada-mac. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UIImageView *dai;

- (IBAction)valueChanged:(UIStepper *)sender;

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


- (IBAction)valueChanged:(UIStepper *)sender {
    [self.view insertSubview:_dai atIndex:sender.value];
}
@end
