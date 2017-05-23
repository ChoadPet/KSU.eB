//
//  NavigationTableViewController.m
//  Mine.ksu.e
//
//  Created by Vetaliy Poltavets on 5/14/17.
//  Copyright © 2017 vpoltave. All rights reserved.
//

#import "NavigationTableViewController.h"


@interface NavigationTableViewController ()

@end

@implementation NavigationTableViewController {
    
    NSArray* menu;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    menu = @[@"empty", @"My profile", @"Catalog", @"e-Biblioteka", @"My groups", @"Log out"];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {

    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    return [menu count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    NSString* cellIdentifier = [menu objectAtIndex:indexPath.row];
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier forIndexPath:indexPath];

    
    return cell;
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
