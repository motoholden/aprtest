//
//  ViewController.m
//  insertSubview
//
//  Created by motomac on 2014/11/27.
//  Copyright (c) 2014年 motomac. All rights reserved.
//

#import "ViewController.h"

@interface ViewController (){
    UIImageView *house;
}

@property (weak, nonatomic) IBOutlet UIView *field;

- (IBAction)insertHouse:(id)sender;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    UIImage *imageData = [UIImage imageNamed:@"house.png"];
    CGFloat width = imageData.size.width;
    CGFloat height = imageData.size.height;
    CGRect rect = CGRectMake(0, 0, width, height);
    house = [[UIImageView alloc] initWithFrame:rect];
    house.image = imageData;
    house.contentMode = UIViewContentModeTop;
    house.center = CGPointMake(68+width/2, 67+height/2);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)insertHouse:(id)sender {
    [_field insertSubview:house atIndex:1];
}
@end
