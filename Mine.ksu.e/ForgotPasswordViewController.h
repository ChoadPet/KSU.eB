//
//  ForgotPasswordViewController.h
//  Mine.ksu.e
//
//  Created by Vetaliy Poltavets on 5/12/17.
//  Copyright © 2017 vpoltave. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ForgotPasswordViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *emailField;
@property (weak, nonatomic) IBOutlet UILabel *warningMessage;
@property (weak, nonatomic) IBOutlet UIButton *sentButton;

- (IBAction)sentAction:(id)sender;

@end
