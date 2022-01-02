//
//  PersolCenterListTableViewCell.m
//  Wang
//
//  Created by 刘一 on 2022/1/1.
//

#import "PersolCenterListTableViewCell.h"

@interface PersolCenterListTableViewCell ()


@property (weak, nonatomic) IBOutlet UILabel *personTitleLable;

@end

@implementation PersolCenterListTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (void)setTitle:(NSString *)title {
    self.personTitleLable.text = title;
}

@end
