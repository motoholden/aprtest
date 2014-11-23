//
//  ViewController.h
//  ex_sliderValue
//
//  Created by yoshiyuki oshige on 2013/08/13.
//  Copyright (c) 2013年 yoshiyuki. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
- (IBAction)updateValue:(UISlider *)sender;
@property (weak, nonatomic) IBOutlet UILabel *valueLabel;

@end
