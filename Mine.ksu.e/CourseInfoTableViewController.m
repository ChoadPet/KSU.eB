//
//  CourseInfoTableViewController.m
//  Mine.ksu.e
//
//  Created by Vetaliy Poltavets on 5/21/17.
//  Copyright © 2017 vpoltave. All rights reserved.
//

#import "CourseInfoTableViewController.h"

@interface CourseInfoTableViewController ()

@end

@implementation CourseInfoTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    SWRevealViewController* revealViewController = self.revealViewController;
    
    if (revealViewController) {
        self.barButton.target = self.revealViewController;
        self.barButton.action = @selector(revealToggle:);
        
        [self.view addGestureRecognizer:self.revealViewController.panGestureRecognizer];
    
   [self borderForLoginButtons:self.courseButton];
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)borderForLoginButtons: (UIButton*)button{
    
    [button.layer setBorderWidth:1.f];
    [button.layer setBorderColor:[[UIColor lightGrayColor] CGColor]];
}

//- (void)courseAlert {
//    
//    UIAlertController* alert =
//    [UIAlertController alertControllerWithTitle:@"Лист надіслано"
//                                        message:@"Перевірте будь ласка, вашу пошту."
//                                 preferredStyle:UIAlertControllerStyleAlert];
//    UIAlertAction *defaultAction =
//    [UIAlertAction actionWithTitle:@"OK"
//                             style:UIAlertActionStyleDefault
//                           handler:^(UIAlertAction * action) {
//                               [super.navigationController popViewControllerAnimated:YES];
//                           }];
//    
//    [alert addAction:defaultAction];
//    [self presentViewController:alert animated:YES completion:nil];
//}

- (IBAction)actionCourse:(id)sender {
    
   // [self courseAlert];
    
}
@end
