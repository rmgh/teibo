//
//  ViewController.m
//  teibo
//
//  Created by minowaryohei on 2015/03/30.
//  Copyright (c) 2015年 rm. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITableViewCell *tableCell;

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

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    if (indexPath.row == 1) {
        self.tableCell.frame = CGRectMake(0, 0, tableView.frame.size.width, 0);
        [self.tableCell sizeToFit];
        return self.tableCell.frame.size.height;
    }
    else
        return 44;
}
@end
