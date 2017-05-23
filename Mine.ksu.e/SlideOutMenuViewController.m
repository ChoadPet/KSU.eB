//
//  SlideOutMenuViewController.m
//  Mine.ksu.e
//
//  Created by Vetaliy Poltavets on 5/14/17.
//  Copyright © 2017 vpoltave. All rights reserved.
//

#import "SlideOutMenuViewController.h"

@interface SlideOutMenuViewController ()

@end

@implementation SlideOutMenuViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
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

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
