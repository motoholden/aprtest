//
//  ViewController.h
//  OkadaCounter
//
//  Created by okada-mac on 2014/11/16.
//  Copyright (c) 2014年 okada-mac. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
   NSInteger total;
   IBOutlet UILabel *screen;
}
- (IBAction)increment:(id)sender;
- (IBAction)decrement:(id)sender;
- (IBAction)clear:(id)sender;
@end

