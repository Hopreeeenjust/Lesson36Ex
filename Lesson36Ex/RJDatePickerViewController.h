//
//  RJDatePickerViewController.h
//  Lesson36Ex
//
//  Created by Hopreeeeenjust on 02.02.15.
//  Copyright (c) 2015 Hopreeeeenjust. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RJDatePickerViewController : UIViewController
@property (strong, nonatomic) NSDate *dateOfBirth;
@property (strong, nonatomic) NSDate *currentDateOfBirth;

@property (weak, nonatomic) IBOutlet UIBarButtonItem *doneButton;

- (IBAction)actionDoneButtonPushed:(UIBarButtonItem *)sender;
- (IBAction)actionDatePickerValueChanged:(UIDatePicker *)sender;
@end
