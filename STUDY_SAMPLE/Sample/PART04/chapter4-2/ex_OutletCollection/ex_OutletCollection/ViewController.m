//
//  ViewController.m
//  ex_OutletCollection
//
//  Created by yoshiyuki oshige on 2013/08/13.
//  Copyright (c) 2013年 yoshiyuki. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
//テキストフィールドをアウトレットコレクションを使って配列colorNamesに接続します
@property (strong, nonatomic) IBOutletCollection(UITextField) NSArray *colorNames;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    //テキストフィールドにプレイスホルダーテキストを設定します
    for (UITextField *fld in _colorNames)
    {
        fld.placeholder = @" 好きな色は?";
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
