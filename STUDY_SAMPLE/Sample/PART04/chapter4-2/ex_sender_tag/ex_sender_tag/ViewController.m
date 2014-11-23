//
//  ViewController.m
//  ex_sender_tag
//
//  Created by yoshiyuki oshige on 2013/08/13.
//  Copyright (c) 2013年 yoshiyuki. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
//ラベルとアウトレット接続します
@property (weak, nonatomic) IBOutlet UILabel *wordLabel;
//ボタンとアクション接続します
- (IBAction)touchWordButton:(UIButton *)sender;

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

//ボタンのタップで実行します
- (IBAction)touchWordButton:(UIButton *)sender {
    NSString *word;
    //sender.tag でボタンのタグ番号を調べて振り分けます
    switch (sender.tag) {
        case 10: word = @"FLOWER"; break;
        case 11: word = @"BIRD"; break;
        case 12: word = @"WIND"; break;
        case 13: word = @"MOON"; break;
    }
    //選んだ語句をラベルに表示します
    _wordLabel.text = word;
}
@end
