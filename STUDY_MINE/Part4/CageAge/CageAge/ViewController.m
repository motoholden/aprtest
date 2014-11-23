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
//画面をタップされた時のメソッド
- (IBAction)bkgTapped:(id)sender;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    //labelの初期化
    _humanLabel.text = @"oakda";
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)calc:(id)sender {
    double catAge = [_catField.text doubleValue];
    double humanAge = [self catAgeToHumanAge:catAge];
    NSString *okadamoto = [NSString stringWithFormat:@"% .1f歳", humanAge];
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

- (IBAction)bkgTapped:(id)sender {
    //編集終了の合図
    [self.view endEditing:YES];
}

//文字数の制限
- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string {
    //変更前のテキストを取得
    NSMutableString *tmp = [_catField.text mutableCopy];
    //編集後のテキスト作成
    [tmp replaceCharactersInRange:range withString:string];
    //制限項目 100歳以下
    BOOL isAgelimit = [tmp doubleValue] <= 100;
    //4文字以下
    BOOL isLengthLimit = [tmp length] <= 4;
    return isAgelimit && isLengthLimit;
}

@end
