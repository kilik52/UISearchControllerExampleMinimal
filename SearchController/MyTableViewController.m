//
//  MyTableViewController.m
//  SearchController
//
//  Created by 曦炽 朱 on 14/10/27.
//  Copyright (c) 2014年 mirroon. All rights reserved.
//

#import "MyTableViewController.h"
#import "MyResultsViewController.h"

@interface MyTableViewController ()
@property (nonatomic, strong) NSArray *dataArray;
@property (nonatomic, strong) UISearchController *searchController;
@end

@implementation MyTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Init Data
    self.dataArray = @[@"1",@"2",@"3",@"4"];
    
    
    // Init Search
    MyResultsViewController *resultsController = [self.storyboard instantiateViewControllerWithIdentifier:@"MyResultsViewController"];
    
    self.searchController = [[UISearchController alloc] initWithSearchResultsController:resultsController];
    
    self.searchController.searchResultsUpdater = resultsController;
    [self.searchController.searchBar sizeToFit];
    self.tableView.tableHeaderView = self.searchController.searchBar;
    self.definesPresentationContext = YES;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.dataArray.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
    
    // Configure the cell...
    cell.textLabel.text = self.dataArray[indexPath.row];
    
    return cell;
}


@end
