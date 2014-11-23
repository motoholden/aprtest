//
//  ViewController.m
//  CatAge
//
//  Created by yoshiyuki oshige on 2013/08/14.
//  Copyright (c) 2013年 yoshiyuki. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

//猫年齢を表示するテキストフィールド
@property (weak, nonatomic) IBOutlet UITextField *catField;
//換算結果を表示するラベル
@property (weak, nonatomic) IBOutlet UILabel *humanLabel;
//換算を実行するメソッド
- (IBAction)calc:(id)sender;
//猫年齢を人年齢に換算する関数
- (double) catAgeToHumanAge:(double)catAge;
//背景がタップされたら実行するメソッド
- (IBAction)bkgTapped:(id)sender;

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

//換算処理
- (IBAction)calc:(id)sender {
    double catAge = [_catField.text doubleValue];
    double humanAge = [self catAgeToHumanAge:catAge];
    NSString *ans;
    ans = [NSString stringWithFormat:@"%.1f 歳", humanAge];
    _humanLabel.text = ans;
}

//猫年齢を人年齢に換算する関数
- (double) catAgeToHumanAge:(double)catAge
{
    double age;
    if(catAge<=1){
        age = 20*catAge;
    } else if(catAge<=5) {
        age = catAge*6+15;
    } else if(catAge<=10) {
        age = catAge*5+20;
    } else if(catAge<=15) {
        age = catAge*4+30;
    } else {
        age = catAge*3+45;
    }
    return age;
}

//背景タップでキーボードを引っ込める
- (IBAction)bkgTapped:(id)sender {
    [self.view endEditing:YES];
}

// 入力文字数を制限する
- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range
replacementString:(NSString *)string
{
    // 変更前のテキストを取得
    NSMutableString *tmp = [_catField.text mutableCopy];
    // 編集後のテキストを作る
    [tmp replaceCharactersInRange:range withString:string];
    //100 歳以下である
    BOOL isAgeLimit = [tmp doubleValue] <= 100;
    //4 文字以下である
    BOOL isLengthLimit = [tmp length] <= 4;
    return isAgeLimit && isLengthLimit;
}

@end
