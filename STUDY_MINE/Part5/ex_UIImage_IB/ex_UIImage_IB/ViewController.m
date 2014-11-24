//画像をプログラムで表示するやつ
/*
 基本的な流れはスーパービュー(大元)の上にイメージビュー(サブビュー)置いてその上にイメージを置く感じ。
 やってることはstoryboardでやってる感じ
*/


#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.

    //この画像を使いますよ〜
    UIImage *imageData = [UIImage imageNamed:@"flower.png"];
    //イメージビュー作成(サブビュー)
    //これがイメージビューの大きさ
    CGRect rect = CGRectMake(0 ,0, 100, 100);
    UIImageView *imageView = [[UIImageView alloc] initWithFrame:rect];
    //イメージビューにイメージを設定
    imageView.image = imageData;
    imageView.contentMode = UIViewContentModeTopLeft;
    //クリッピングしてみる
    imageView.clipsToBounds = YES;
    //表示の画像の決定
    imageView.center = self.view.center;
    //これで表示する
    [self.view addSubview:imageView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
