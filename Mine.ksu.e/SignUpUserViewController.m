//
//  SignUpUserViewController.m
//  Mine.ksu.e
//
//  Created by Vetaliy Poltavets on 5/11/17.
//  Copyright © 2017 vpoltave. All rights reserved.
//

#import "SignUpUserViewController.h"

@interface SignUpUserViewController ()

@end

NSArray* pickerViewArray;

@implementation SignUpUserViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    myLabel.text = @"";
    
    myPickerView.delegate = self;
    myPickerView.dataSource = self;
    
    pickerViewArray = @[@"Студент", @"Викладач"];
    
    [self borderForLoginButtons:self.registrationButton];
    
}

//- (NSAttributedString *)pickerView:(UIPickerView *)pickerView attributedTitleForRow:(NSInteger)row forComponent:(NSInteger)component
//{
//    NSString *strTitle = @"Студент";
//    NSAttributedString *attString = [[NSAttributedString alloc] initWithString:strTitle attributes:@{NSForegroundColorAttributeName:[UIColor whiteColor]}];
//    
//    return attString;
//    
//}

- (void)borderForLoginButtons: (UIButton*)button{
    
    [button.layer setBorderWidth:1.f];
    [button.layer setBorderColor:[[UIColor lightGrayColor] CGColor]];
}


-(void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component {
    
    NSString* rolSelected = [pickerViewArray objectAtIndex:row];
    myLabel.text = rolSelected;
    
}

-(NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component {
    
    return pickerViewArray.count;

}

-(NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView {
    
    return 1;
    
}

-(NSString*)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component {
    
    return pickerViewArray[row];
    
}

- (void)viewWillAppear:(BOOL)animated {
    
    [super viewWillAppear:animated];
    
    self.passwordAreNotMatch.text = nil;
    self.passwordAreNotMatch.alpha = 0.f;

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (void) loginUserAlert {
    
    UIAlertController* alert =
    [UIAlertController alertControllerWithTitle:@"Реєстрація"
                                        message:@"Ти успішно зареєструвався!"
                                 preferredStyle:UIAlertControllerStyleAlert];
    UIAlertAction *defaultAction =
    [UIAlertAction actionWithTitle:@"OK"
                             style:UIAlertActionStyleDefault
                           handler:^(UIAlertAction * action) {}];
    
    [alert addAction:defaultAction];
    [self presentViewController:alert animated:YES completion:nil];
}

- (void)checkPasswordMatch {
    
    if(![self.passwordField.text isEqualToString:self.reenterPasswordField.text]) {
        
        NSLog(@"password don't match!");
        
        self.passwordAreNotMatch.text = @"Паролі не совпадають!";
        
        [UIView animateWithDuration:0.3 animations:^{
            self.passwordAreNotMatch.alpha = 1;
        }];
    } else {
        [self performSegueWithIdentifier:@"sign up" sender:self];
        [self loginUserAlert];
    }
    
}

- (void)checkAllFieldsComplete {
    
    if (!([self.usernameField hasText]) ||
        !([self.secondNameField hasText]) ||
        !([self.emailAdressField hasText]) ||
        !([self.passwordField hasText]) ||
        !([self.reenterPasswordField hasText])) {
        
        self.passwordAreNotMatch.text = @"Заповніть усі поля позначенні з (*)!";
        
        [UIView animateWithDuration:0.3 animations:^{
            self.passwordAreNotMatch.alpha = 1;
        }];
    }
    else {
        [self checkPasswordMatch];
        
    }
}

- (IBAction)registrationPressed:(id)sender {

    [self.usernameField resignFirstResponder];
    [self.secondNameField resignFirstResponder];
    [self.emailAdressField resignFirstResponder];
    [self.passwordField resignFirstResponder];
    [self.reenterPasswordField resignFirstResponder];
    
    [self checkAllFieldsComplete];
    
}
@end
