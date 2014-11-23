//
//  ViewController.m
//  CageAge
//
//  Created by okada-mac on 2014/11/22.
//  Copyright (c) 2014年 okada-mac. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
//猫の
@property (weak, nonatomic) IBOutlet UITextField *catField;
//このラベルの中に計算した年齢が入ってくる
@property (weak, nonatomic) IBOutlet UILabel *humanLabel;
//換算ボタン
- (IBAction)calc:(id)sender;
//換算する関数
- (double) catAgeToHumanAge:(double)catAge;

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

- (IBAction)calc:(id)sender {
    double okada = [_catField.text doubleValue];
    double motohiro = [self catAgeToHumanAge:okada];
    NSString *okadamoto = [NSString stringWithFormat:@"% .1f歳", motohiro];
    _humanLabel.text = okadamoto;
}

//換算する関数
- (double) catAgeToHumanAge:(double)catAge {
    double age;
    if ( catAge <= 1 ) {
        age = 20*catAge;
    } else if ( catAge <= 5 ) {
        age = catAge * 6 + 15;
    } else if ( catAge <= 10 ) {
        age = catAge * 5 + 20;
    } else if ( catAge <= 15 ) {
        age = catAge * 4 + 30;
    } else {
        age = catAge * 3 + 45;
    }
    return age;
}

@end
