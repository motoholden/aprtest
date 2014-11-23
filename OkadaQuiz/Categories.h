//
//  Categories.h
//  OkadaQuiz
//
//  Created by okada-mac on 2014/11/16.
//  Copyright (c) 2014年 okada-mac. All rights reserved.
//

#import <UIKit/UIKit.h>

int Category1Number;
int Category2Number;

@interface Categories : UITableViewController
{
    IBOutlet UIButton *Category1;
    IBOutlet UIButton *Category2;
}

- (IBAction)Button1:(id)sender;
- (IBAction)Button2:(id)sender;

@end
