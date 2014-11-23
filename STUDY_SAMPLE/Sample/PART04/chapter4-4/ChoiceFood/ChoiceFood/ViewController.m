//
//  ViewController.m
//  ChoiceFood
//
//  Created by yoshiyuki oshige on 2013/08/16.
//  Copyright (c) 2013年 yoshiyuki. All rights reserved.
//

#import "ViewController.h"
//Food クラスのヘッダファイルを読み込む
#import "Food.h"

@interface ViewController ()
{
    //Foodクラスのインスタンスを入れておく
    Food *foodObj;
    //選んだ料理を入れておく
    NSString *theFood;
}
@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    //Food クラスのインスタンスを作って初期化する
    foodObj = [[Food alloc] initWithFoods:@[@" カレー",@" 焼き肉",@" 寿司",@" ラーメン"]];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

// 料理を選ぶ
- (IBAction)doChoice:(id)sender {
    //3 回まで選び直せる
    if(foodObj.counter < 3){
        //choiceFood メソッドを実行
        theFood = [foodObj choiceFood];
        // 結果をラベルに表示する
        _answerLabel.text = [NSString stringWithFormat:@"%@ でどうでしょう?", theFood];
    }else{
        _answerLabel.text = [NSString stringWithFormat:@" もう、%@ に決定!", theFood];
    }
}

@end
