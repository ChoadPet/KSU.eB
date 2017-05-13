//
//  LoginSuccessViewController.m
//  Mine.ksu.e
//
//  Created by Vetaliy Poltavets on 5/13/17.
//  Copyright © 2017 vpoltave. All rights reserved.
//

#import "MainViewController.h"

@interface MainViewController ()

@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    if ([segue.identifier isEqualToString:@"login"]) {
        NSLog(@"segue ");
        self.successLabel.text = @"from login view";
    } else {
        self.successLabel.text = @"from sign up view";
    }
    
}

@end
