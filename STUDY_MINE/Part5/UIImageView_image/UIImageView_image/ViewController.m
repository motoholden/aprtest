//スイッチのon offで画像の表示・非表示を制御してみた
//イメージビューも自分で定義


#import "ViewController.h"

@interface ViewController (){
    UIImage *imageData;
    UIImageView *imageView;
}

- (IBAction)switchChange:(UISwitch *)sender;

//イメージビュー
//@property (weak, nonatomic) IBOutlet UIImageView *imageHolder;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.

    //画像データ
    imageData = [UIImage imageNamed:@"surfshop.jpg"];
    //イメージビュー作成
    CGRect rect = CGRectMake(0, 0, 100, 100);
    imageView = [[UIImageView alloc] initWithFrame:rect];
    //イメージビューにイメージを設定する
    imageView.image = imageData;
    imageView.contentMode = UIViewContentModeScaleAspectFit;
    imageView.backgroundColor = [UIColor lightGrayColor];
    //ここでスーパービューにサブビューを追加
    [self.view addSubview:imageView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)switchChange:(UISwitch *)sender {
    if (sender.on == YES) {
        imageView.image = imageData;
    } else {
        imageView.image = nil;
    }
}
@end
