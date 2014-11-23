//
//  ViewController.m
//  Test
//
//  Created by okada-mac on 2014/11/13.
//  Copyright (c) 2014年 okada-mac. All rights reserved.
//

#import "ViewController.h"
#import "Person.h"
#import "Student.h"
#import "Teacher.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    int motohiro = 9;
    NSLog(@"%d",  motohiro);
    NSMutableString *okada = [NSMutableString string];
    [okada setString:@"111111"];
    NSLog(@"%@", okada);
    exit(0);
    
    
    //シンプルにするやつ
    //配列生成
    NSMutableArray *persons = [NSMutableArray array];
    //Student class new
    Student *student = [[Student alloc] init];
    //Teacher class new
    Teacher *teacher = [[Teacher alloc] init];
    //名前とか学校のもろもろ設定
    [student setLastName:@"岡田"];
    [student setFirstName:@"もとひろ"];
    [student setSchool:@"生徒の学校名"];
    [teacher setLastName:@"先生の苗字"];
    [teacher setFirstName:@"先生の名前"];
    [teacher setSubject:@"先生の教科名"];
    //person配列にもろもろ格納
    [persons addObject:student];
    [persons addObject:teacher];
    //配列のループ
    for (Person *person in persons ) {
        [person introduceMyself];
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
