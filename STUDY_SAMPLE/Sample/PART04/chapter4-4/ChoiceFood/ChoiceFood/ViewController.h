//
//  ViewController.h
//  ChoiceFood
//
//  Created by yoshiyuki oshige on 2013/08/16.
//  Copyright (c) 2013年 yoshiyuki. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
//選んだ料理を表示するラベル
@property (weak, nonatomic) IBOutlet UILabel *answerLabel;
//悩み解決ボタン
- (IBAction)doChoice:(id)sender;

@end
