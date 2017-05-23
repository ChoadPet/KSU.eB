//
//  MyCourseViewController.h
//  Mine.ksu.e
//
//  Created by Vetaliy Poltavets on 5/21/17.
//  Copyright © 2017 vpoltave. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SWRevealViewController.h"

@interface MyCourseViewController : UITableViewController

- (IBAction)actionCourse:(id)sender;

@property (weak, nonatomic) IBOutlet UIButton *courseButton;

@property (weak, nonatomic) IBOutlet UIBarButtonItem* barButton;

@end
