//初期の文字を設定して押している間文字を変更する

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    //ボタン作成
    UIButton *button = [UIButton buttonWithType:UIButtonTypeSystem];
    //ボタンタイトル
    [button setTitle:@"test" forState:UIControlStateNormal];
    [button setTitle:@"aaaa" forState:UIControlStateHighlighted];
    button.titleLabel.font = [UIFont boldSystemFontOfSize: 18];
    //ボタン領域
    button.frame = CGRectMake(50, 50, 100,40);
    //ビューに追加
    [self.view addSubview:button];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
