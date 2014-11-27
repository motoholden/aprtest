//
//  ViewController.m
//  bringSubviewToFront
//
//  Created by okada-mac on 2014/11/27.
//  Copyright (c) 2014年 okada-mac. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UIImageView *photo1;
@property (weak, nonatomic) IBOutlet UIImageView *photo2;
@property (weak, nonatomic) IBOutlet UIImageView *photo3;

- (IBAction)selectPhoto:(UISegmentedControl *)sender;

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

- (IBAction)selectPhoto:(UISegmentedControl *)sender {
    switch (sender.selectedSegmentIndex) {
        case 0:
            [self.view bringSubviewToFront:_photo1];
            break;
        case 1:
            [self.view bringSubviewToFront:_photo2];
            break;
        case 2:
            [self.view bringSubviewToFront:_photo3];
            break;
    }
}
@end
