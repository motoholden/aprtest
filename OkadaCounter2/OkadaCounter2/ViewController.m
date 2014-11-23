//
//  ViewController.m
//  OkadaCounter2
//
//  Created by okada-mac on 2014/11/16.
//  Copyright (c) 2014年 okada-mac. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController{
    int total;
    NSString *totaltext;
    IBOutlet UILabel *totallabel;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    total = 0;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)plus:(id)sender {
    total++;
    totaltext = [NSString stringWithFormat:@"%d", total];
    [totallabel setText:totaltext];
}

- (IBAction)minus:(id)sender {
    if( total > 0){
        --total;
        totaltext = [NSString stringWithFormat:@"%d", total];
        [totallabel setText:totaltext];
    }

}

@end
