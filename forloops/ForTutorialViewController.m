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
    _firstTextView.text =@" ";
    _secondTextView.text = @" ";
    _thirdTextView.text =@" ";
    _fourthTextView.text =@" ";
    _label1.text=@" " ;
    _label2.text=@" ";
    _label3.text=@" ";
    _label4.text =@" ";
    
    _titleLabel.text= @"What is a Loop? ";
    self.statementimg.hidden = YES;
    self.Controlimage.hidden = YES;
    self.variableimage.hidden =YES;
    self.iterationImage.hidden=YES;
   
    
    
    _myLabel.frame=CGRectMake(30,300,750,600);
  
    _myLabel.font = [UIFont fontWithName:@"Helvetica" size:18];
    _myLabel.text = @"What is a loop? A loop is a programming structure that allows code to be repeated until a certain condition is met.";
    _myLabel.editable = NO;
    
}

- (IBAction)LookLikeButton:(UIBarButtonItem *)sender {
   _myLabel.text= @" ";
    _label1.text=@" " ;
    _label2.text=@" ";
    _label3.text=@" ";
    _label4.text =@" ";
    self.statementimg.hidden = NO;
    self.Controlimage.hidden = NO;
    self.variableimage.hidden =NO;
    self.iterationImage.hidden=NO;
    _titleLabel.text= @"What does it look Like? ";
    
    
    _firstTextView.text= @" Initialization: This is where a variable called a loop control variable that is used to keep track of the number of iterations the loop has gone through.";
    _firstTextView.editable =NO;
    _secondTextView.text = @" Terminating Condition: A statement that defines a test condition the loop control variable must meet in order to terminate the loop.";
    _secondTextView.editable=NO;
    _thirdTextView.text = @"Increment/Decrement of Loop Control Variable: Loop control variables can either be incremented (increased by 1 in each iteration), decremented (decreased by 1 in each iteration) or can be increased or decreased by a specific amount.";
    _thirdTextView.editable=NO;
    _fourthTextView.text =@"Loop Body: This is the code to be executed with each iteration.";
    _fourthTextView.editable=NO;
    
    self.iterationImage.image = [UIImage imageNamed:@"initializerimage.png"];
    self.statementimg.image = [UIImage imageNamed:@"conditionImage.png"];
    self.Controlimage.image = [UIImage imageNamed:@"bodyimage.png"];
    self.variableimage.image =[UIImage imageNamed:@"incrementimg"];
   
    _myLabel.frame=CGRectMake(30,300,750,600);
   
    _myLabel.font = [UIFont fontWithName:@"Helvetica" size:18];
    
    
    _myLabel.editable = NO;
}

- (IBAction)termsButton:(UIBarButtonItem *)sender {
    _myLabel.frame=CGRectMake(30,300,750,600);
    
    _myLabel.font = [UIFont fontWithName:@"Helvetica" size:18];
   // _myLabel.textColor = [UIColor redColor];
    _myLabel.text= @" ";
    
    self.statementimg.hidden = YES;
    self.Controlimage.hidden = YES;
    self.variableimage.hidden =YES;
    self.iterationImage.hidden=YES;
    
    _firstTextView.text = @"Variable --->";
   _secondTextView.text =@"Loop Control variable -->";
   _thirdTextView.text =@"Iteration -->";
   _fourthTextView.text =@"Statement-->";
    
    _titleLabel.text = @"Match the corresponding terms with the correct defenitions";
    
    self.label1.frame = CGRectMake(600, 350, 150, 20);
    _label1.text= @"The number of times the code in the loop body has been executed";
    self.label1.numberOfLines=0;
    self.label1.sizeToFit;
    self.label1.userInteractionEnabled= YES;
    
    self.label2.frame = CGRectMake(600, 490, 150, 20);
    _label2.text = @"A line of code to be executed";
    self.label2.numberOfLines=0;
    self.label2.sizeToFit;
    self.label2.userInteractionEnabled=YES;
    
    self.label3.frame = CGRectMake(600, 600, 150, 20);
    _label3.text = @"A symbolic name or storage location given to a piece of data stored in a computer's memory";
    self.label3.numberOfLines=0;
    self.label3.sizeToFit;
    self.label3.userInteractionEnabled=YES;
    
    self.label4.frame = CGRectMake(600, 750, 150, 20);
    _label4.text =@"the variable that is incremented or decremented and is used to keep track of the number of iterations in a loop";
    self.label4.userInteractionEnabled=YES;
    self.label4.numberOfLines=0;
    self.label4.sizeToFit;
   
    
    
     // _answerLabelFrame = CGRectMake(500, 350, 150, 20);
    

    NSMutableSet *labels = [[NSMutableSet alloc] init];
    [labels addObject:self.label1];
    [labels addObject:self.label2];
    [labels addObject:self.label3];
    [labels addObject:self.label4];
    
    for (UILabel *label in labels) {
        UIPanGestureRecognizer *panGesture = [[UIPanGestureRecognizer alloc] initWithTarget:self action:@selector(panDetected:)];
        [label addGestureRecognizer:panGesture];
    }
    
    
   
      _myLabel.editable = NO;
  
}
-(BOOL) isThisView: (UIView *) firstView nearTo:(UIView *) secondView withBuffer: (CGFloat)buffer{
    buffer = (buffer >= 0) ? buffer : 0;
    CGFloat firstViewX = firstView.frame.origin.x;
    CGFloat firstViewY = firstView.frame.origin.y;
    CGFloat secondViewX = secondView.frame.origin.x;
    CGFloat secondViewY = secondView.frame.origin.y;
    
    if( firstViewX >= secondViewX-buffer
       && firstViewX <= secondViewX+buffer
       && firstViewY >= secondViewY-buffer
       && firstViewY <= secondViewY+buffer )
    {
        return YES;
    } else {
        return NO;
    }
}

- (IBAction)exampleButton:(UIBarButtonItem *)sender {
     _myLabel.text= @" ";
    _firstTextView.text =@" ";
    _secondTextView.text = @" ";
    _thirdTextView.text =@" ";
    _fourthTextView.text =@" ";
    _titleLabel.text= @" ";
    _label1.text=@" " ;
    _label2.text=@" ";
    _label3.text=@" ";
    _label4.text =@" ";
    self.statementimg.hidden = YES;
    self.Controlimage.hidden = YES;
    self.variableimage.hidden =YES;
    self.iterationImage.hidden=YES;
   
    
   
    _myLabel.frame=CGRectMake(30,300,750,600);
    
    _myLabel.font = [UIFont fontWithName:@"Helvetica" size:18];
    _myLabel.editable = NO;
   
}

- (IBAction)VideoButton:(UIBarButtonItem *)sender {
    _myLabel.text= @" ";
    _firstTextView.text =@" ";
    _secondTextView.text = @" ";
    _thirdTextView.text =@" ";
    _fourthTextView.text =@" ";
    _titleLabel.text= @" ";
    _label1.text=@" " ;
    _label2.text=@" ";
    _label3.text=@" ";
    _label4.text =@" ";
    self.statementimg.hidden = YES;
    self.Controlimage.hidden = YES;
    self.variableimage.hidden =YES;
    self.iterationImage.hidden=YES;
  
   
    UIWebView *webView = [[UIWebView alloc] initWithFrame:CGRectMake(0.0, 0.0,840.0,840.0)];
    NSURL *URL = [NSURL URLWithString:@"http://www.youtube.com/watch?v=b-eYJEYYAsk"];
    NSURLRequest *requestObj = [NSURLRequest requestWithURL:URL];
   // webView.delegate = self ;
    [webView loadRequest:requestObj];
    [self.view addSubview:webView];
}

-(void)panDetected:(UIPanGestureRecognizer *)sender
{
    UIView *label = sender.view;
    CGPoint amtOfTranslation = [sender translationInView:self.view];
    CGPoint labelPosition = label.center;
    labelPosition.x = labelPosition.x + amtOfTranslation.x;
    labelPosition.y = labelPosition.y + amtOfTranslation.y;
    label.center = labelPosition;
    [sender setTranslation:CGPointZero inView:self.view];
    
    if (sender.state == UIGestureRecognizerStateEnded)
    {
        BOOL viewsClose = [self isThisView:label nearTo:self.label1 withBuffer:50];
        if (viewsClose == YES)
        {
            label.center = self.label1.center;
        } else {
            [label setFrame:CGRectMake(700, 550, 100, 60)];
        }
    }

}


@end
