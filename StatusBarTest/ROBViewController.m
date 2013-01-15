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

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // the default autoresizingMask is set to stick the view to the bottom of the screen    
    // this will make the main view stretchy ...
    self.view.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
}


- (IBAction)toggleStatusBar:(id)sender
{
    
    BOOL statusBarHidden = [UIApplication sharedApplication].statusBarHidden;
    
    if (statusBarHidden) {
        [UIApplication sharedApplication].statusBarHidden = NO;
        self.view.frame = [UIScreen mainScreen].applicationFrame;        
    } else {
        [UIApplication sharedApplication].statusBarHidden = YES;
        self.view.frame = [UIScreen mainScreen].bounds;        
    }
}

@end
