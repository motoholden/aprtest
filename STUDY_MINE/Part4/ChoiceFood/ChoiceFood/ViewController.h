//
//  ViewController.h
//  ChoiceFood
//
//  Created by okada-mac on 2014/11/23.
//  Copyright (c) 2014年 okada-mac. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

//選んだのを表示
@property (weak, nonatomic) IBOutlet UILabel *answerLabel;
//ボタンアクション
- (IBAction)doChoice:(id)sender;

- (IBAction)resetCounter:(id)sender;

-(void)setFirstLabel;
@end

