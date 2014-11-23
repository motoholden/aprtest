//
//  ViewController.m
//  TestAnything
//
//  Created by okada-mac on 2014/11/22.
//  Copyright (c) 2014年 okada-mac. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
//ボタンとアクション接続するメソッド
//- (IBAction)tapButton:(id)sender;
@end

@implementation ViewController

- (void)viewDidLoad {
    

    
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    NSString *name = [self fullname:@"okada" lastName:@"moto"];
    NSLog(@"%@", name);
    [self countUP];
    NSLog(@"%ld", _counter);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
//名前作成
- (NSString *)fullname:(NSString *)sei lastName:(NSString *)mei{
    NSString *sei_mei = [NSString stringWithFormat:@"%@ %@", sei, mei];
    return sei_mei;
}
//Countup
- (void)countUP{
    _counter++;
}


//ボタンのタップで実行するメソッド
- (IBAction)tapButton:(id)sender{
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"確認" message:@"start" delegate:self cancelButtonTitle:@"cancel" otherButtonTitles:@"OK", nil];
    [alert show];
}

//アラートのボタンがタップされた時の処理(デリゲートメソッド)
- (void) alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex{
    if( buttonIndex == 0 ){
        NSLog(@"キャンセルされました");
    }else{
        NSLog(@"OKされました");
    }
}

@end
