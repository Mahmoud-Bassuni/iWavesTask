//
//  Screen3VC.m
//  iWavesTask
//
//  Created by Bassuni on 9/16/19.
//  Copyright © 2019 Bassuni. All rights reserved.
//

#import "Screen3VC.h"
#import "DataWebServices.h"
@interface Screen3VC ()

@end

@implementation Screen3VC


- (void)viewDidLoad {
    [super viewDidLoad];
    [self desginAndConfigVC];
}
- (IBAction)loadData:(id)sender {

    [DataWebServices getDataFromWebService:^(NSMutableArray* result) {
        self.tableviewData = [[NSMutableArray alloc]init];
        self.tableviewData = result;
        [self.tableviewProp reloadData];
    }];
}
- (void)desginAndConfigVC
{
    self.navigationItem.title = @"Call WebService";
    self.tableviewProp.dataSource = self;
    self.tableviewProp.delegate = self;
    self.tableviewProp.tableFooterView = [[UIView alloc] initWithFrame:CGRectZero];
}
- (nonnull UITableViewCell *)tableView:(nonnull UITableView *)tableView cellForRowAtIndexPath:(nonnull NSIndexPath *)indexPath {

    UITableViewCell *cell ;
    cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:nil] ;
    }
    cell.textLabel.text = self.tableviewData[indexPath.row];
    return cell;
}

- (NSInteger)tableView:(nonnull UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.tableviewData.count ;
}
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

@end
