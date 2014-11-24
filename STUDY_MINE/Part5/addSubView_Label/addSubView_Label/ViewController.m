//
//  ViewController.m
//  addSubView_Label
//
//  Created by okada-mac on 2014/11/24.
//  Copyright (c) 2014年 okada-mac. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
- (IBAction)removeAddLabel:(id)sender;

@property (strong, nonatomic) IBOutlet UILabel *myLabel;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
//    CGRect rect = CGRectMake(50, 100, 200, 30);
//    UILabel *mylabel = [[UILabel alloc] initWithFrame:rect];
//    
//    mylabel.text = @"test";                         //ラベルの文字
//    mylabel.textAlignment = NSTextAlignmentCenter;  //ラベル文字の位置
//    mylabel.textColor = [UIColor greenColor];
//    mylabel.backgroundColor = [UIColor orangeColor];
//    //ビューに追加している
//    [self.view addSubview:mylabel];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//ラベルをビューから取り除いたり、追加したりする
- (IBAction)removeAddLabel:(id)sender {
    if ([ _myLabel isDescendantOfView:self.view] ) {
        //ビューから取り除く
        [_myLabel removeFromSuperview];
    } else {
        //ビューに追加する
        [self.view addSubview:_myLabel];
    }
}

@end
