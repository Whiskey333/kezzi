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
    
    self.title = @"一年";
    
    self.avatarImageView.layer.cornerRadius = 8;
    [self.nicknameButton setTitle:@"iphone1111" forState:UIControlStateNormal];
    
}

- (IBAction)nicknameButtonClick {
    PersolCenterViewController *persolCenterVc = [[PersolCenterViewController alloc] init];
    [self.navigationController pushViewController:persolCenterVc animated:YES];

}

+ (void)aaa {
    
}


@end
