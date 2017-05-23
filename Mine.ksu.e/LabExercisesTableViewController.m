//
//  LabExercisesTableViewController.m
//  Mine.ksu.e
//
//  Created by Vetaliy Poltavets on 5/23/17.
//  Copyright © 2017 vpoltave. All rights reserved.
//

#import "LabExercisesTableViewController.h"

@interface LabExercisesTableViewController ()

@end

@implementation LabExercisesTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self borderForLoginButtons:self.labButton];
    
    SWRevealViewController* revealViewController = self.revealViewController;
    
    if (revealViewController) {
        self.barButton.target = self.revealViewController;
        self.barButton.action = @selector(revealToggle:);
        
        [self.view addGestureRecognizer:self.revealViewController.panGestureRecognizer];
        
    }
    

}

-(void) viewWillAppear:(BOOL)animated {
    
    [super viewWillAppear:animated];
    
    self.warningLabel.text = nil;
    self.warningLabel.alpha = 0.f;
}

- (void)borderForLoginButtons: (UIButton*)button{
    
    [button.layer setBorderWidth:1.f];
    [button.layer setBorderColor:[[UIColor lightGrayColor] CGColor]];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)actionLabPressed:(id)sender {
    
    self.warningLabel.text = @"Заповніть будь ласка,поля з відповідями!";
    [UIView animateWithDuration:0.3 animations:^{
        self.warningLabel.alpha = 1;
    }];

    
}

@end
