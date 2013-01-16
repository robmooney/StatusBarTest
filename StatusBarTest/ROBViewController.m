//
//  ROBViewController.m
//  StatusBarTest
//
//  Created by Robert Mooney on 15/01/2013.
//  Copyright (c) 2013 Rob Mooney. All rights reserved.
//

#import "ROBViewController.h"

@interface ROBViewController ()

- (IBAction)toggleStatusBar:(id)sender;

@end

@implementation ROBViewController

- (IBAction)toggleStatusBar:(id)sender
{    
    if ([UIApplication sharedApplication].statusBarHidden) {
        [[UIApplication sharedApplication] setStatusBarHidden:NO withAnimation:UIStatusBarAnimationSlide];
        
        [UIView animateWithDuration:0.4 animations:^{
            self.view.frame = [UIScreen mainScreen].applicationFrame;
            [self.view layoutIfNeeded];
        }];
    } else {
        [[UIApplication sharedApplication] setStatusBarHidden:YES withAnimation:UIStatusBarAnimationSlide];
        [UIView animateWithDuration:0.3 animations:^{
            self.view.frame = [UIScreen mainScreen].bounds;
            [self.view layoutIfNeeded];
        }];
    }
}

@end
