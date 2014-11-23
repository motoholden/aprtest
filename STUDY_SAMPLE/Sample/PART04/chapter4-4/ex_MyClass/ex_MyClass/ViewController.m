//
//  ViewController.m
//  ex_MyClass
//
//  Created by yoshiyuki oshige on 2013/08/15.
//  Copyright (c) 2013年 yoshiyuki. All rights reserved.
//

#import "ViewController.h"
//MyClassのヘッダファイルをインポートする
#import "MyClass.h"

@interface ViewController ()
//テキストフィールドをアウトレット接続する
@property (weak, nonatomic) IBOutlet UITextField *msgTextField;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    //MyClass クラスのインスタンスを作成して初期化する
    MyClass *myObj = [[MyClass alloc]init];
    // インスタンスのプロパティの値を設定する
    myObj.where = @" 大分";
    // インスタンスのhello: メソッドを実行する
    NSString *myMessage = [myObj hello:@" 小野"];
    // 結果をテキストフィールドに表示する
    _msgTextField.text = myMessage;
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
