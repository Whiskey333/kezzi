//
//  ViewController.m
//  Wang
//
//  Created by 刘一 on 2022/1/1.
//

#import "ViewController.h"

#import "PersolCenterViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UIImageView *avatarImageView;
@property (weak, nonatomic) IBOutlet UIButton *nicknameButton;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"一年四季&花中四君子";
    
    self.avatarImageView.layer.cornerRadius = 8;
    [self.nicknameButton setTitle:@"看看列表呀！" forState:UIControlStateNormal];
    
    UILabel *haoLabel = [[UILabel alloc] initWithFrame:CGRectMake(52, 220, 500, 100)];
    haoLabel.text = @"一年四季为：春夏秋冬";
    haoLabel.textColor = [UIColor blackColor];
    [self.view addSubview:haoLabel];
    
    UILabel *qinLabel = [[UILabel alloc] initWithFrame:CGRectMake(52, 270, 500, 100)];
    qinLabel.text = @"花中四君子为：梅兰竹菊";
    qinLabel.textColor = [UIColor blackColor];
    [self.view addSubview:qinLabel];
    
    
}

- (IBAction)nicknameButtonClick {
    PersolCenterViewController *persolCenterVc = [[PersolCenterViewController alloc] init];
    [self.navigationController pushViewController:persolCenterVc animated:YES];

}

@end
