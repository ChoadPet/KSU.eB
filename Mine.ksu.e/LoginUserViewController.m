//
//  ViewController.m
//  Mine.ksu.e
//
//  Created by Vetaliy Poltavets on 5/11/17.
//  Copyright © 2017 vpoltave. All rights reserved.
//

#import "LoginUserViewController.h"

@interface LoginUserViewController ()

@end

@implementation LoginUserViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    // white borders for buttons
    [self borderForLoginButtons:self.entryButton];
    [self borderForLoginButtons:self.registrationButton];
    
    // Color for navigation controller button(backButton)
    UINavigationBar *bar = [self.navigationController navigationBar];
    [bar setTintColor:[UIColor colorWithRed:0  green:0 blue:0 alpha:1.0]];
    
    //log in username and password
    self.username = @"vpoltave";
    self.password = @"pa";
    
    
}

-(void) viewWillAppear:(BOOL)animated {
    
    [super viewWillAppear:animated];
    
    self.failLogin.text = nil;
    self.failLogin.alpha = 0.f;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)borderForLoginButtons: (UIButton*)button{
    
    [button.layer setBorderWidth:1.f];
    [button.layer setBorderColor:[[UIColor whiteColor] CGColor]];
}

- (void)loginUserAlert {
    
    UIAlertController* alert =
    [UIAlertController alertControllerWithTitle:@"Вхід"
                                        message:@"Ти успішно увійшов у систему!"
                                 preferredStyle:UIAlertControllerStyleAlert];
    UIAlertAction *defaultAction =
    [UIAlertAction actionWithTitle:@"OK"
                             style:UIAlertActionStyleDefault
                           handler:^(UIAlertAction * action) {}];
    
    [alert addAction:defaultAction];
    [self presentViewController:alert animated:YES completion:nil];
}

- (void)checkingFieldsForComplition {
    
    BOOL isUserNameEqual = [self.username isEqualToString:[self.userNameTextField text]];
    BOOL isUserPasswordEqual = [self.password isEqualToString:[self.passwordTextField text]];
    
    if (![self.userNameTextField hasText] ||
        ![self.passwordTextField hasText]) {
        
        NSLog(@"login fields are empty");
        
        self.failLogin.text = @"Заповніть будь ласка,поля пароль та Email!";
        [UIView animateWithDuration:0.3 animations:^{
            self.failLogin.alpha = 1;
        }];
        
    } else if (isUserNameEqual && isUserPasswordEqual) {
        
        NSLog(@"log in success");
        //[self loginUserAlert];
        self.failLogin.hidden = YES;
        [self performSegueWithIdentifier:@"mainMenu" sender:self];
    }
    else  {
    
        NSLog(@"log in fail ");
        self.failLogin.text = @"Невірний пароль або Email!";
        self.failLogin.hidden = NO;
        [UIView animateWithDuration:0.3 animations:^{
            self.failLogin.alpha = 1;
        }];
    }
}

- (IBAction)entryAccount:(id)sender {
    
    [self.userNameTextField resignFirstResponder];
    [self.passwordTextField resignFirstResponder];
    
    [self checkingFieldsForComplition];
    
}

- (IBAction)forgotPassword:(id)sender {
    
    
}
@end
