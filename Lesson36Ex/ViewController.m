//
//  ViewController.m
//  Lesson36Ex
//
//  Created by Hopreeeeenjust on 01.02.15.
//  Copyright (c) 2015 Hopreeeeenjust. All rights reserved.
//

#import "ViewController.h"
#import "RJInfoViewController.h"
#import "RJDatePickerViewController.h"
#import "RJEducationViewController.h"

@interface ViewController () <UIPopoverControllerDelegate>
@property (strong, nonatomic) UIPopoverController* popover;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Actions 

- (IBAction)actionInfoButtonPressed:(UIButton *)infoButton {
    RJInfoViewController *vc = [self.storyboard instantiateViewControllerWithIdentifier:@"InfoController"];
    if (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPad) {
        UIPopoverController *popover = [[UIPopoverController alloc] initWithContentViewController:vc];
        popover.popoverContentSize = CGSizeMake(400, 400);
        CGRect infoButtonRect = [self.tableView convertRect:self.infoButton.frame fromView:vc.navigationController.view];
        infoButtonRect.origin.y = -32;
        [popover presentPopoverFromRect:infoButtonRect
                                 inView:self.tableView
               permittedArrowDirections:UIPopoverArrowDirectionUp
                               animated:YES];
    } else {
        [self presentViewController:vc animated:YES completion:nil];
    }
}

#pragma mark - Segue

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
}

#pragma mark - UITextFieldDelegate

- (BOOL)textFieldShouldBeginEditing:(UITextField *)textField {
    if (textField == self.dateOfBirthField) {
        UINavigationController *nav = [self.storyboard instantiateViewControllerWithIdentifier:@"NavDatePickerController"];
        if (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPad) {
            UIPopoverController *popover = [[UIPopoverController alloc] initWithContentViewController:nav];
            popover.popoverContentSize = CGSizeMake(300, 250);
            CGRect dateOfBirthRect = [self.tableView convertRect:textField.frame fromView:textField.superview];
            [popover presentPopoverFromRect:dateOfBirthRect
                                     inView:self.tableView
                   permittedArrowDirections:UIPopoverArrowDirectionUp
                                   animated:YES];
        } else {
            [self presentViewController:nav animated:YES completion:nil];
        }
    } else if (textField == self.educationField) {
        UINavigationController *nav = [self.storyboard instantiateViewControllerWithIdentifier:@"RJNavEducationViewController"];
        if (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPad) {
            UIPopoverController *popover = [[UIPopoverController alloc] initWithContentViewController:nav];
            popover.popoverContentSize = CGSizeMake(400, 320);
            CGRect educationRect = [self.tableView convertRect:textField.frame fromView:textField.superview];
            [popover presentPopoverFromRect:educationRect
                                     inView:self.tableView
                   permittedArrowDirections:UIPopoverArrowDirectionUp
                                   animated:YES];
        } else {
            [self presentViewController:nav animated:YES completion:nil];
        }
    }
    return NO;
}

#pragma mark - UITableViewDelegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
}

#pragma mark - UIPopoverControllerDelegate

- (void)popoverControllerDidDismissPopover:(UIPopoverController *)popoverController {
    
}

@end
