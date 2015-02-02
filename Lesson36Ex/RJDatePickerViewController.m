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
    // Do any additional setup after loading the view.
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
    [self setDate];
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (IBAction)actionDatePickerValueChanged:(UIDatePicker *)sender {
    self.currentDateOfBirth = sender.date;
}

#pragma mark - Methods

- (void)setDate {
//    ViewController *vc = [self.storyboard instantiateViewControllerWithIdentifier:@"ViewController"];
//    NSDate *dateOfBirth = self.dateOfBirth;
//    NSDateFormatter *formatter = [NSDateFormatter new];
//    [formatter setDateFormat:@"dd/MMM/yyyy"];
//    vc.dateOfBirthField.text = [formatter stringFromDate:dateOfBirth];
//    [vc.tableView reloadData];
}

@end
