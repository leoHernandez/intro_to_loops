//
//  ForTutorialViewController.h
//  forloops
//
//  Created by leo Hernandez on 9/25/13.
//  Copyright (c) 2013 leo Hernandez. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ForTutorialViewController : UIViewController
@property (strong, nonatomic) IBOutlet UITextView *myLabel;
- (IBAction)WhatisLoopButton:(UIBarButtonItem *)sender;
- (IBAction)termsButton:(UIBarButtonItem *)sender;
- (IBAction)exampleButton:(UIBarButtonItem *)sender;
- (IBAction)VideoButton:(UIBarButtonItem *)sender;
- (IBAction)LookLikeButton:(UIBarButtonItem *)sender;

@end
