//
//  ViewController.m
//  ex_IBAction1
//
//  Created by okada-mac on 2014/11/22.
//  Copyright (c) 2014年 okada-mac. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UILabel *wordLabel;
- (IBAction)touchWordButton:(UIButton *)sender;

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


- (IBAction)touchWordButton:(UIButton *)sender {
    NSString *word;
    switch (sender.tag) {
        case 10: word = @"red"; break;
        case 11: word = @"green"; break;
        case 12: word = @"blue"; break;
        case 13: word = @"black"; break;
    }
    _wordLabel.text = word;
}
@end
