//
//  Food.m
//  ChoiceFood
//
//  Created by yoshiyuki oshige on 2013/08/16.
//  Copyright (c) 2013年 yoshiyuki. All rights reserved.
//

#import "Food.h"

@implementation Food

//NSObject のinit をオーバーライドする
- (id)init
{
    self = [self initWithFoods:@[]];
    return self;
}

// イニシャライザ
- (id)initWithFoods:(NSArray *)entryFoods
{
    // スーパークラスのinit で初期化済みのself を取得する
    self = [super init];
    //foods の値を設定する
    if(entryFoods.count<=0){
        //entryFoods が空だったら初期値を設定する
        foods = @[@" 和食", @" 中華", @" インド料理", @" イタリア料理"];
    }else{
        //entryFoods と同じ値の新しい配列を作る
        foods = [[NSArray alloc] initWithArray:entryFoods];
    }
    // プロパティcounter をリセットする
    _counter = 0;
    return self;
}

// 食事をランダムに選んで返す
- (NSString *)choiceFood
{
    // 実行回数をカウントアップする
    _counter++;
    // 配列からランダムに選ぶ
    NSInteger pos = arc4random()%(foods.count);
    // 選んだ食事を返す
    return foods[pos];
}

@end
