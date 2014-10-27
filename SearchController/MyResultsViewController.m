//
//  MyResultsViewController.m
//  SearchController
//
//  Created by 曦炽 朱 on 14/10/27.
//  Copyright (c) 2014年 mirroon. All rights reserved.
//

#import "MyResultsViewController.h"

@interface MyResultsViewController ()

@end

@implementation MyResultsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

#pragma mark - UISearchResultsUpdating
- (void)updateSearchResultsForSearchController:(UISearchController *)searchController {
    NSLog(@"Entering:%@",searchController.searchBar.text);
}
@end
