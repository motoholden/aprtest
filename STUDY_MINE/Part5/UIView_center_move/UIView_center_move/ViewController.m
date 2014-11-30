//
//  ViewController.m
//  UIView_center_move
//
//  Created by okada-mac on 2014/11/30.
//  Copyright (c) 2014年 okada-mac. All rights reserved.
//

#import "ViewController.h"

@interface ViewController (){
    UIImage *imageData;
    UIImageView *carImageView;
}


@property (strong, nonatomic) IBOutlet UIImageView *car;
- (IBAction)move:(id)sender;
- (IBAction)decrease:(id)sender;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    //画像読み込み
    imageData = [UIImage imageNamed:@"car_R.png"];
    CGRect rect =CGRectMake(100,200,100,100);
    carImageView = [[UIImageView alloc] initWithFrame:rect];
    //イメージビューにイメージ設定
    carImageView.image = imageData;
    carImageView.contentMode = UIViewContentModeScaleAspectFit;
    [self.view addSubview:carImageView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)move:(id)sender {
    CGPoint pt = carImageView.center;
    pt.x += 10;
    carImageView.center = pt;
}

- (IBAction)decrease:(id)sender {
    CGPoint pt = carImageView.center;
    pt.x -= 10;
    carImageView.center = pt;
}
@end
