//

#import "ViewController.h"

@interface ViewController ()

- (IBAction)switchChange:(UISwitch *)sender;
@property (weak, nonatomic) IBOutlet UIImageView *photo;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)switchChange:(UISwitch *)sender {
    _photo.hidden = !(sender.on);
}
@end
