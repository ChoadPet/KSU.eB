//
//  LabExercisesTableViewController.h
//  Mine.ksu.e
//
//  Created by Vetaliy Poltavets on 5/23/17.
//  Copyright © 2017 vpoltave. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SWRevealViewController.h"

@interface LabExercisesTableViewController : UITableViewController

@property (weak, nonatomic) IBOutlet UIBarButtonItem* barButton;
@property (weak, nonatomic) IBOutlet UILabel *warningLabel;
@property (weak, nonatomic) IBOutlet UIButton *labButton;

- (IBAction)actionLabPressed:(id)sender;


@end
