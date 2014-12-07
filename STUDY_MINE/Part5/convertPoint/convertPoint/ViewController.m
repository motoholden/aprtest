//
//  ViewController.m
//  convertPoint
//
//  Created by okada-mac on 2014/12/07.
//  Copyright (c) 2014年 okada-mac. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (strong, nonatomic) IBOutlet UIImageView *ring;
@property (strong, nonatomic) IBOutlet UIView *field;
@property (strong, nonatomic) IBOutlet UIImageView *tombo;


- (IBAction)catchTombo:(id)sender;
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

- (IBAction)catchTombo:(id)sender {
    //トンボの座標をグローバル座標(ビューの座標)に変換
    CGPoint pt = [self.view convertPoint:_tombo.center fromView:_field];
    NSLog(@"%f, 移動する前のx座標", pt.x);
    NSLog(@"%f, 移動する前のy座標", pt.y);
    _ring.center = pt;
    NSLog(@"%f, 移動する後のx座標", pt.x);
    NSLog(@"%f, 移動する後のy座標", pt.y);
}
@end
