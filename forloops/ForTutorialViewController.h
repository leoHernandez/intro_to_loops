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


@property (strong, nonatomic) IBOutlet UIImageView *variableimage;
@property (strong, nonatomic) IBOutlet UIImageView *Controlimage;
@property (strong, nonatomic) IBOutlet UIImageView *iterationImage;
@property (strong, nonatomic) IBOutlet UIImageView *statementimg;
@property (strong, nonatomic) IBOutlet UILabel *titleLabel;

@property (strong, nonatomic) IBOutlet UITextView *firstTextView;
@property (strong, nonatomic) IBOutlet UITextView *secondTextView;
@property (strong, nonatomic) IBOutlet UITextView *thirdTextView;
@property (strong, nonatomic) IBOutlet UITextView *fourthTextView;

@property (strong, nonatomic) IBOutlet UILabel *label1;
@property (strong, nonatomic) IBOutlet UILabel *label2;
@property (strong, nonatomic) IBOutlet UILabel *label3;
@property (strong, nonatomic) IBOutlet UILabel *label4;

@property (strong, nonatomic) IBOutlet UILabel *placeholder1;

@property (strong, nonatomic) IBOutlet UILabel *placeholder2;

@property (strong, nonatomic) IBOutlet UILabel *placeholder3;

@property (strong, nonatomic) IBOutlet UILabel *placeholder4;

@end
