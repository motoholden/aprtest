//
//  Food.h
//  ChoiceFood
//
//  Created by yoshiyuki oshige on 2013/08/16.
//  Copyright (c) 2013年 yoshiyuki. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Food : NSObject
{
    // 料理の配列
    NSArray *foods;
}

// 実行回数
@property (readonly) int counter;

// イニシャライザ
- (id)initWithFoods:(NSArray *)entryFoods;
// 料理の選択
- (NSString *)choiceFood;

@end
