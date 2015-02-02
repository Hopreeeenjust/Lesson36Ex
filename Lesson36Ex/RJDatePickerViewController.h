//
//  RJDatePickerViewController.h
//  Lesson36Ex
//
//  Created by Hopreeeeenjust on 02.02.15.
//  Copyright (c) 2015 Hopreeeeenjust. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol RJDatePickerViewDelegate;

@interface RJDatePickerViewController : UIViewController
@property (strong, nonatomic) id <RJDatePickerViewDelegate> delegate;
@property (strong, nonatomic) NSDate *dateOfBirth;
@property (strong, nonatomic) NSDate *currentDateOfBirth;

@property (weak, nonatomic) IBOutlet UIBarButtonItem *doneButton;
@property (weak, nonatomic) IBOutlet UIDatePicker *datePicker;

- (IBAction)actionDoneButtonPushed:(UIBarButtonItem *)sender;
- (IBAction)actionDatePickerValueChanged:(UIDatePicker *)sender;
@end

@protocol RJDatePickerViewDelegate <NSObject>
- (void)setDateOfBirthFromDate:(NSDate *)date;
@end