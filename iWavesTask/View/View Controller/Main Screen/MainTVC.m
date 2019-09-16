//
//  MainTVC.m
//  iWavesTask
//
//  Created by Bassuni on 9/15/19.
//  Copyright © 2019 Bassuni. All rights reserved.
//

#import "MainTVC.h"

@interface MainTVC ()

@end

@implementation MainTVC

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.tableView reloadData];
    self.tableView.tableFooterView = [[UIView alloc] initWithFrame:CGRectZero];

}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 2;
}

@end
