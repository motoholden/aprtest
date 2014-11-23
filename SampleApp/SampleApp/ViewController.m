//
//  ViewController.m
//  SampleApp
//
//  Created by okada-mac on 2014/11/15.
//  Copyright (c) 2014年 okada-mac. All rights reserved.
//

#import "ViewController.h"
#import "Person.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    //Personクラスのインスタンスを生成
    Person *aPerson = [Person new];
    //set name
    aPerson.name = @"岡田基";
    //get name
    NSString *aName = aPerson.name;
    NSLog(@"名前は%@", aName);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
