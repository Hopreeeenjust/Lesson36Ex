//
//  RJEducationViewController.m
//  Lesson36Ex
//
//  Created by Hopreeeeenjust on 02.02.15.
//  Copyright (c) 2015 Hopreeeeenjust. All rights reserved.
//

#import "RJEducationViewController.h"

@interface RJEducationViewController ()
@property (strong, nonatomic) NSIndexPath *lastIndexPath;
@end

@implementation RJEducationViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (void)dealloc {
    NSLog(@"education deallocated");
}

#pragma mark - Actions

- (IBAction)actionDoneButtonPushed:(UIBarButtonItem *)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}

#pragma mark - UITableViewDelegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    if (self.lastIndexPath) {
        [[tableView cellForRowAtIndexPath:self.lastIndexPath] setAccessoryType:UITableViewCellAccessoryNone];
    }
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    [[tableView cellForRowAtIndexPath:indexPath] setAccessoryType:UITableViewCellAccessoryCheckmark];
    self.lastIndexPath = indexPath;
}


@end
