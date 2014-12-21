//ボタン作成から押された時のアクションを追加する
//基本的にはstoryboard使う感じと同じ。 メソッド定義してアクションの中身書いて
//登録が自動だったけど手動でやると[button addTarget:self action:@selector(hello:) forControlEvents:UIControlEventTouchUpInside]; で登録する


#import "ViewController.h"

@interface ViewController ()
- (void) hello:(UIButton *)sender;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.

    //ボタン作成
    UIButton *button = [UIButton buttonWithType:UIButtonTypeSystem];
    //タイトルとフォント
    //有効状態
    [button setTitle:@"test" forState:UIControlStateNormal];
    //無効状態
    [button setTitle:@"bbbb" forState:UIControlStateDisabled];
    button.titleLabel.font = [UIFont boldSystemFontOfSize: 18];
    //ボタンと背景色
    button.tintColor = [UIColor whiteColor];
    button.backgroundColor = [UIColor redColor];
    //表示位置とサイズ
    button.frame = CGRectMake(50, 50, 100, 40);
    //ボタンにアクションを追加
    [button addTarget:self action:@selector(hello:) forControlEvents:UIControlEventTouchUpInside];
    //ボタンをビューに追加
    [self.view addSubview:button];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void) hello:(UIButton *)sender{
    NSLog(@"okada");
    sender.enabled = NO;
}

@end
