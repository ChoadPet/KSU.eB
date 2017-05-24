//
//  MyCourseViewController.m
//  Mine.ksu.e
//
//  Created by Vetaliy Poltavets on 5/21/17.
//  Copyright © 2017 vpoltave. All rights reserved.
//

#import "MyCourseViewController.h"

@interface MyCourseViewController ()

@end

@implementation MyCourseViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [self borderForLoginButtons:self.courseButton];
    
    SWRevealViewController* revealViewController = self.revealViewController;
    
    if (revealViewController) {
        self.barButton.target = self.revealViewController;
        self.barButton.action = @selector(revealToggle:);
        
        [self.view addGestureRecognizer:self.revealViewController.panGestureRecognizer];
        
    }
    
}

- (void)borderForLoginButtons: (UIButton*)button{
    
    [button.layer setBorderWidth:1.f];
    [button.layer setBorderColor:[[UIColor blackColor] CGColor]];
}

- (void)CourseAlert {
    
    UIAlertController* alert =
    [UIAlertController alertControllerWithTitle:@"Заявка на курс"
                                        message:@"Твоя заявка була прийнята!"
                                 preferredStyle:UIAlertControllerStyleAlert];
    UIAlertAction *defaultAction =
    [UIAlertAction actionWithTitle:@"OK"
                             style:UIAlertActionStyleDefault
                           handler:^(UIAlertAction * action) {}];
    
    [alert addAction:defaultAction];
    [self presentViewController:alert animated:YES completion:nil];
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



- (IBAction)actionCourse:(id)sender {
    
    [self CourseAlert];
    
}
@end
