//
//  Food.h
//  ChoiceFood
//
//  Created by okada-mac on 2014/11/23.
//  Copyright (c) 2014年 okada-mac. All rights reserved.
//

//foods             料理の種類を入れる配列
//counter　　　　　　何回実行したかのカウント
//initWithFoods　　foodsの値を引数で初期化できるイニシャライザ
//choiceFood       料理選択

#import <Foundation/Foundation.h>

@interface Food : NSObject {
    //他クラスから直接参照されたくないのでfoodsはここ(インスタンス変数)
    NSArray *foods;

}
//実行回数
@property (readonly) int counter;
//イニシャライザ
- (id)initWithFoods:(NSArray *)entryFoods;
//料理の選択
- (NSString *)choiceFoods;

- (void)resetCounter;

@end
