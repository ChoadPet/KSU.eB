//
//  SignUpUserViewController.h
//  Mine.ksu.e
//
//  Created by Vetaliy Poltavets on 5/11/17.
//  Copyright © 2017 vpoltave. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SignUpUserViewController : UIViewController <UIPickerViewDelegate, UIPickerViewDataSource> {
    
    IBOutlet UILabel* myLabel;
    IBOutlet UIPickerView* myPickerView;
}

@property (weak, nonatomic) IBOutlet UITextField *usernameField;
@property (weak, nonatomic) IBOutlet UITextField *secondNameField;
@property (weak, nonatomic) IBOutlet UITextField *emailAdressField;
@property (weak, nonatomic) IBOutlet UITextField *passwordField;
@property (weak, nonatomic) IBOutlet UITextField *reenterPasswordField;
@property (weak, nonatomic) IBOutlet UILabel *passwordAreNotMatch;
@property (weak, nonatomic) IBOutlet UIButton *registrationButton;

- (IBAction)registrationPressed:(id)sender;

@end
