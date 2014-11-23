//
//  ViewController.m
//  ChoiceFood
//
//  Created by okada-mac on 2014/11/23.
//  Copyright (c) 2014年 okada-mac. All rights reserved.
//

#import "ViewController.h"
#import "Food.h"

@interface ViewController (){
    //この２つの変数はこのクラスからのみ参照可
    //Foodsクラスのインスタンス
    Food *foodobj;
    //選んだのを入れておく
    NSString *theFood;
}


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    //Foodクラスのインスタンスを作って初期化する
    foodobj = [[Food alloc] initWithFoods:@[@"w", @"x", @"y", @"z"]];
    [self setFirstLabel];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//料理を選ぶ
- (IBAction)doChoice:(id)sender{
    // 3回まで選んでいい
    if (foodobj.counter < 3) {
        //choiceFood メソッドの実行
        theFood = [foodobj choiceFoods];
        //結果をラベルの表示する
        _answerLabel.text = [NSString stringWithFormat:@"%@はどうでしょう", theFood];
    } else {
        _answerLabel.text = [NSString stringWithFormat:@"%@で決定", theFood];
    }
}

//リセットするやつつけたい
- (IBAction)resetCounter:(id)sender {
    [foodobj resetCounter];
    [self setFirstLabel];
}

//初期の文言のやつ
- (void)setFirstLabel{
    if ( foodobj.counter == 0 ) {
        _answerLabel.text = @"ボタン押して----";
    }
}

@end
