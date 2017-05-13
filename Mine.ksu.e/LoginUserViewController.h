//
//  ViewController.h
//  Mine.ksu.e
//
//  Created by Vetaliy Poltavets on 5/11/17.
//  Copyright © 2017 vpoltave. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <QuartzCore/QuartzCore.h>


@interface LoginUserViewController : UIViewController <UITextFieldDelegate>

@property (strong, nonatomic) NSString* username;
@property (strong, nonatomic) NSString* password;
@property (weak, nonatomic) IBOutlet UITextField *userNameTextField;
@property (weak, nonatomic) IBOutlet UITextField *passwordTextField;
@property (weak, nonatomic) IBOutlet UILabel *failLogin;

@property (weak, nonatomic) IBOutlet UIButton *entryButton;
@property (weak, nonatomic) IBOutlet UIButton *forgotButton;
@property (weak, nonatomic) IBOutlet UIButton *registrationButton;

- (IBAction)entryAccount:(id)sender;
- (IBAction)forgotPassword:(id)sender;

@end

