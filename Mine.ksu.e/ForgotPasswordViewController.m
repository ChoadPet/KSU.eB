//
//  ForgotPasswordViewController.m
//  Mine.ksu.e
//
//  Created by Vetaliy Poltavets on 5/12/17.
//  Copyright © 2017 vpoltave. All rights reserved.
//

#import "ForgotPasswordViewController.h"

@interface ForgotPasswordViewController ()

@end

@implementation ForgotPasswordViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [self borderForLoginButtons:self.sentButton];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
    

}

- (void)borderForLoginButtons: (UIButton*)button{
    
    [button.layer setBorderWidth:1.f];
    [button.layer setBorderColor:[[UIColor lightGrayColor] CGColor]];
}

-(void) viewWillAppear:(BOOL)animated {
    
    [super viewWillAppear:animated];
    
    self.warningMessage.text = nil;
    self.warningMessage.alpha = 0.f;
}

- (void)forgotEmailAlert {
    
    UIAlertController* alert =
    [UIAlertController alertControllerWithTitle:@"Лист надіслано"
                                        message:@"Перевірте будь ласка, вашу пошту."
                                 preferredStyle:UIAlertControllerStyleAlert];
    UIAlertAction *defaultAction =
    [UIAlertAction actionWithTitle:@"OK"
                             style:UIAlertActionStyleDefault
                           handler:^(UIAlertAction * action) {
                               [super.navigationController popViewControllerAnimated:YES];
                           }];
    
    [alert addAction:defaultAction];
    [self presentViewController:alert animated:YES completion:nil];
}

-(void)checkEmailField {
    
    if ([self.emailField.text isEqualToString:@""]) {
        
        self.warningMessage.text = @"Заповніть будь ласка, поле E-Mail!";
        
        [UIView animateWithDuration:0.3 animations:^{
            self.warningMessage.alpha = 1;
        }];
    } else {
       
        [self forgotEmailAlert];
    }

}

- (IBAction)sentAction:(id)sender {
    
    [self checkEmailField];

}

@end
