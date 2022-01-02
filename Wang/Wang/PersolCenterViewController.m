//
//  PersolCenterViewController.m
//  Wang
//
//  Created by 刘一 on 2022/1/1.
//

#import "PersolCenterViewController.h"

#import "PersolCenterListTableViewCell.h"

@interface PersolCenterViewController ()<UITableViewDataSource,UITableViewDelegate>

@property (weak, nonatomic) IBOutlet UITableView *persolCenterListTableView;

@property (strong, nonatomic) NSMutableArray * personCennterListArray;

@end

@implementation PersolCenterViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.title = @"首页";
    
    self.persolCenterListTableView.backgroundColor = [UIColor blueColor];
    UINib *nib = [UINib nibWithNibName:@"PersolCenterListTableViewCell" bundle:nil];
    [self.persolCenterListTableView registerNib:nib forCellReuseIdentifier:@"PersolCenterListTableViewCell"];
}

//MARK: —— UITableViewDataSource
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return [self.personCennterListArray count];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [self.personCennterListArray[section] count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    PersolCenterListTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"PersolCenterListTableViewCell"];
    cell.title = self.personCennterListArray[indexPath.section][indexPath.row];
    return cell;
}

//MARK: —— UITableViewDelegate
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    NSLog(@"%@",indexPath);
}

//MARK: —— Lazy
- (NSMutableArray *)personCennterListArray {
    if (!_personCennterListArray) {
        NSArray *array = @[@[@"春",@"夏"],@[@"秋",@"冬",@"梅"],@[@"兰",@"竹",@"菊"]];
        _personCennterListArray = [NSMutableArray arrayWithArray:array];
    }
    return _personCennterListArray;
}
                                           

@end
