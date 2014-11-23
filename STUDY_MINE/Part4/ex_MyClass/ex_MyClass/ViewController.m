//
//  ViewController.m
//  ex_MyClass
//
//  Created by okada-mac on 2014/11/23.
//  Copyright (c) 2014年 okada-mac. All rights reserved.
//

#import "ViewController.h"
#import "MyClass.h"

@interface ViewController ()
//テキストフィールドをアウトレット接続する
@property (weak, nonatomic) IBOutlet UILabel *msgTextField;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    MyClass *myobj = [[MyClass alloc] init];
    myobj.where = @"test";
    //hello method execute
    NSString *msg = [myobj hello:@"okada"];
    _msgTextField.text = msg;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
