//
//  Food.m
//  ChoiceFood
//
//  Created by okada-mac on 2014/11/23.
//  Copyright (c) 2014年 okada-mac. All rights reserved.
//

#import "Food.h"

@implementation Food

//NSObjectのinitをオーバーライド(これコンストラクタみたいなものかな？)
- (id)init {
    self = [ self initWithFoods:@[] ];
    return self;
}

//イニシャライザ(コンストラクタ　もろもろの初期化をしている)
- (id)initWithFoods:(NSArray *)entryFoods{
    //スーパークラスで初期化済みのselfを取得する
    self = [super init];
    //foodの値を設定
    if (entryFoods.count <= 0) {
        //空だったら初期値設定
        foods = @[@"a", @"b", @"c", @"d"];
    } else {
        //entryFoodsセット
        foods = [[NSArray alloc] initWithArray:entryFoods];
    }
    //プロパティ countをリセットする
    _counter = 0;
    return self;
}

//料理をランダムに選ぶ
-(NSString *)choiceFoods{
    //実行回数をプラス
    _counter++;
    //配列からランダムに選ぶ(添字をランダムに作る感じかな)
    NSInteger pos = arc4random() %(foods.count);
    return foods[pos];
    //上でもいいし　直接
    //return foods[arc4random() %(foods.count)] でもいい。
}

//カウンターのリセット
- (void)resetCounter{
    _counter = 0;
}

@end
