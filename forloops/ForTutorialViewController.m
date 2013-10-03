//
//  ForTutorialViewController.m
//  forloops
//
//  Created by leo Hernandez on 9/25/13.
//  Copyright (c) 2013 leo Hernandez. All rights reserved.
//

#import "ForTutorialViewController.h"

@interface ForTutorialViewController ()

@end

@implementation ForTutorialViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)WhatisLoopButton:(UIBarButtonItem *)sender {
    
        _myLabel.frame=CGRectMake(100,300,500,500);
    _myLabel.backgroundColor =[UIColor grayColor];
    _myLabel.font = [UIFont fontWithName:@"Helvetica" size:18];
    _myLabel.text = @"What is a loop? A loop is a programming structure that allows code to be repeated until a certain condition is met.";
    _myLabel.editable = NO;
    
}

- (IBAction)LookLikeButton:(UIBarButtonItem *)sender {
    _myLabel.frame=CGRectMake(100,300,500,500);
    _myLabel.backgroundColor =[UIColor grayColor];
    
    _myLabel.font = [UIFont fontWithName:@"Helvetica" size:18];
    _myLabel.text =@"A loop generally contains four parts:1. Initialization: This is where a variable called a loop control variable that is used to keep track of the number of iterations the loop has gone through. 2. Terminating Condition: A statement that defines a test condition the loop control variable must meet in order to terminate the loop. 3. Increment/Decrement of Loop Control Variable: Loop control variables can either be incremented (increased by 1 in each iteration), decremented (decreased by 1 in each iteration) or can be increased or decreased by a specific amount. 4. Loop Body: This is the code to be executed with each iteration.";
    _myLabel.editable = NO;
}

- (IBAction)termsButton:(UIBarButtonItem *)sender {
    _myLabel.frame=CGRectMake(100,300,500,500);
    _myLabel.backgroundColor =[UIColor grayColor];
    _myLabel.font = [UIFont fontWithName:@"Helvetica" size:18];
    
    NSMutableArray * items = [[NSMutableArray alloc]initWithObjects:@"Variable: A symbolic name or storage location given to a piece of data stored in a computer’s memory",@"Loop Control Variable: The variable that is incremented or decremented and is used to keep track of the number of iterations in a loop.",@"Iteration: The number of times the code in the loop body has been executed.",@"Statement: A line of code to be executed.", nil];
    
    NSMutableString * bulletList = [NSMutableString stringWithCapacity:items.count*10];
    
    for (NSString *aString in items)
    {
        [bulletList appendFormat:@"\n\u2022 %@", aString]; //\u2022 bullet symbol
    }
    
    _myLabel.text = bulletList;
   
    _myLabel.editable = NO;
}

- (IBAction)exampleButton:(UIBarButtonItem *)sender {
    _myLabel.frame=CGRectMake(100,300,500,500);
    _myLabel.backgroundColor =[UIColor grayColor];
    _myLabel.font = [UIFont fontWithName:@"Helvetica" size:18];
    _myLabel.editable = NO;
   
}

- (IBAction)VideoButton:(UIBarButtonItem *)sender {
    UIWebView *webView = [[UIWebView alloc] initWithFrame:CGRectMake(0.0, 0.0,840.0,840.0)];
    NSURL *URL = [NSURL URLWithString:@"http://www.youtube.com/watch?v=EXwBcBJyWZw"];
    NSURLRequest *requestObj = [NSURLRequest requestWithURL:URL];
   // webView.delegate = self ;
    [webView loadRequest:requestObj];
    [self.view addSubview:webView];
}


@end
