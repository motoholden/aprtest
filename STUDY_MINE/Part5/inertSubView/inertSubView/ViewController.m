//スイッチで家の出し入れがしたかったのでスイッチに変更
//これ全部手動でやってみたいけど結構きつくない？？

#import "ViewController.h"

@interface ViewController (){
    UIImageView *house;
}
//木とかが置いてあるビュー
@property (weak, nonatomic) IBOutlet UIView *field;
//スイッチで家の出し入れがしたい
- (IBAction)changeHouse:(UISwitch *)sender;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.

    //イメージ作成
    UIImage *imageData = [UIImage imageNamed:@"house.png"];
    CGFloat width = imageData.size.width;
    CGFloat height = imageData.size.height;
    CGRect rect = CGRectMake(0, 0, width, height);
    //イメージビュー作成
    house = [[UIImageView alloc] initWithFrame:rect];
    
    //イメージビューにイメージ設定
    house.image = imageData;
    house.contentMode = UIViewContentModeTopLeft;
    house.center = CGPointMake(68+width/2, 67+height/2);
    //インデックス番号1 下から2番目に挿入
    [_field insertSubview:house atIndex:1];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//ボタンを押した時に家降臨
- (IBAction)insertHouse:(id)sender {
    [_field insertSubview:house atIndex:1];
}

- (IBAction)changeHouse:(UISwitch *)sender {
    house.hidden = !(sender.on);
}




@end
