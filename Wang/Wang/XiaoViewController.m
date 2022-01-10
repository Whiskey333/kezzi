//
//  XiaoViewController.m
//  
//
//  Created by 刘一 on 2022/1/2.
//

#import "XiaoViewController.h"

@interface XiaoViewController ()

@end

@implementation XiaoViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.view.backgroundColor = [UIColor yellowColor];
    
    CGFloat height = [self setHeihgt:50];
    UIView *qinView = [self creatView:[UIColor redColor] frame:CGRectMake(10, 100, 100, height)];
    qinView.layer.cornerRadius = 10;
    [self.view addSubview:qinView];
    
    UIView *testView = [self creatView:[UIColor cyanColor] frame:CGRectMake(200, 100, 100, height)];
    [self.view addSubview:testView];
    
    [self button];
    
    UIView *liuView = [[UIView alloc] init];
    liuView.backgroundColor = [UIColor greenColor];
    liuView.frame = CGRectMake(20, 20, 15, 15);
    liuView.layer.cornerRadius = 6;
    liuView.layer.shadowColor = [UIColor blackColor].CGColor;
    liuView.layer.shadowOffset = CGSizeMake(-0, -0);
//    liuView.layer.shadowRadius = 3;
    liuView.layer.shadowOpacity = 1;
    [qinView addSubview:liuView];
    
    UILabel *haoLabel = [[UILabel alloc] initWithFrame:CGRectMake(25, 450, 200, 50)];
    haoLabel.text = @"  好好学习，天天向上";
    haoLabel.textColor = [UIColor redColor];
    haoLabel.backgroundColor = [UIColor blueColor];
    haoLabel.layer.cornerRadius = 18;
//    haoLabel.layer.masksToBounds = YES;
    haoLabel.clipsToBounds = YES;
    [self.view addSubview:haoLabel];
}

- (UIView *)creatView:(UIColor *)color frame:(CGRect)frame {
    UIView *qinView = [[UIView alloc] init];
    qinView.backgroundColor = color;
    qinView.frame = frame;
    qinView.transform = CGAffineTransformMakeRotation(3.14);
    qinView.layer.borderColor = [UIColor blackColor].CGColor;
    qinView.layer.borderWidth = 2;
    return qinView;
}

- (CGFloat)setHeihgt:(CGFloat)hegiht {
    return hegiht * 2;
}

- (void)button {
    UIButton *haoButton = [[UIButton alloc] init];
    haoButton.frame =CGRectMake(180, 200, 10, 10);
    haoButton.backgroundColor = [UIColor brownColor];
    [haoButton addTarget:self action:@selector(buttonClick) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:haoButton];
}

- (void)buttonClick {
    NSLog(@"buttonClick");
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
