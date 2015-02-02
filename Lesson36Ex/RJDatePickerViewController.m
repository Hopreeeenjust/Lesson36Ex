//
//  RJDatePickerViewController.m
//  Lesson36Ex
//
//  Created by Hopreeeeenjust on 02.02.15.
//  Copyright (c) 2015 Hopreeeeenjust. All rights reserved.
//

#import "RJDatePickerViewController.h"

@interface RJDatePickerViewController ()

@end

@implementation RJDatePickerViewController

#pragma mark - View

- (void)viewDidLoad {
    [super viewDidLoad];
    if (self.dateOfBirth) {
        self.datePicker.date = self.dateOfBirth;
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (void)dealloc {
    NSLog(@"date deallocated");
}

#pragma mark - Actions

- (IBAction)actionDoneButtonPushed:(UIBarButtonItem *)sender {
    self.dateOfBirth = self.currentDateOfBirth;
    [self.delegate setDateOfBirthFromDate:self.dateOfBirth];
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (IBAction)actionDatePickerValueChanged:(UIDatePicker *)sender {
    self.currentDateOfBirth = sender.date;
}



@end
