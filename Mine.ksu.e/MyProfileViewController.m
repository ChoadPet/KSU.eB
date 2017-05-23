//
//  MyProfileViewController.m
//  Mine.ksu.e
//
//  Created by Vetaliy Poltavets on 5/16/17.
//  Copyright © 2017 vpoltave. All rights reserved.
//

#import "MyProfileViewController.h"

@interface MyProfileViewController ()

@end

@implementation MyProfileViewController

- (void)viewDidLoad {
    [super viewDidLoad];
   
    SWRevealViewController* revealViewController = self.revealViewController;
    
    if (revealViewController) {
        self.barButton.target = self.revealViewController;
        self.barButton.action = @selector(revealToggle:);
        
        [self.view addGestureRecognizer:self.revealViewController.panGestureRecognizer];
        
    }
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
