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
/*
 This method shows a brief definition of what a Loop is 
 All other labels and text views and images are hidden
 
 */
- (IBAction)WhatisLoopButton:(UIBarButtonItem *)sender {
    _titleLabel.frame = CGRectMake(300, 250, self.view.frame.size.width-20, 20);
    _firstTextView.text =@" ";
    _secondTextView.text = @" ";
    _thirdTextView.text =@" ";
    _fourthTextView.text =@" ";
    _label1.text=@" " ;
    _label1.backgroundColor= Nil;
    _label2.text=@" ";
    _label2.backgroundColor= Nil;
    _label3.text=@" ";
    _label3.backgroundColor=Nil;
    _label4.text =@" ";
    _label4.backgroundColor= Nil;
    _placeholder1.backgroundColor= Nil;
    _placeholder2.backgroundColor= Nil;
    _placeholder3.backgroundColor=Nil;
    _placeholder4.backgroundColor=Nil;
    
    
    _titleLabel.text= @"What is a Loop? ";
    self.statementimg.hidden = YES;
    self.Controlimage.hidden = YES;
    self.variableimage.hidden =YES;
    self.iterationImage.hidden=YES;
   
    
    
    _myLabel.frame=CGRectMake(30,300,750,600);
  
    _myLabel.font = [UIFont fontWithName:@"Courier New" size:20];
    _myLabel.text = @"What is a loop? A loop is a programming structure that allows code to be repeated until a certain condition is met.";
    _myLabel.editable = NO;
    
}
/*
 This method shows how each part of the loop looks like.
 
 */

- (IBAction)LookLikeButton:(UIBarButtonItem *)sender {
   _titleLabel.frame = CGRectMake(300, 250, self.view.frame.size.width-20, 20);
     UIFont *textfont = [UIFont fontWithName:@"Courier New" size:12];
       _myLabel.text= @" ";
    _label1.text=@" " ;
    _label1.backgroundColor= Nil;
    _label2.text=@" ";
    _label2.backgroundColor= Nil;
    _label3.text=@" ";
    _label3.backgroundColor=Nil;
    _label4.text =@" ";
    _label4.backgroundColor= Nil;
    self.statementimg.hidden = NO;
    self.Controlimage.hidden = NO;
    self.variableimage.hidden =NO;
    self.iterationImage.hidden=NO;
    _placeholder1.backgroundColor= Nil;
    _placeholder2.backgroundColor= Nil;
    _placeholder3.backgroundColor=Nil;
    _placeholder4.backgroundColor=Nil;
    _titleLabel.text= @"What does it look Like? ";
    
    
    _firstTextView.text= @" Initialization: This is where a variable called a loop control variable that is used to keep track of the number of iterations the loop has gone through.";
    _firstTextView.frame = CGRectMake(30, 330, 300, 200);
    _firstTextView.font = textfont;
    
    _firstTextView.editable =NO;
    _secondTextView.text = @" Terminating Condition: A statement that defines a test condition the loop control variable must meet in order to terminate the loop.";
    _secondTextView.font =textfont;
    _secondTextView.frame= CGRectMake(30, 450, 300, 200);
    _secondTextView.editable=NO;
    _thirdTextView.text = @"Increment/Decrement of Loop Control Variable: Loop control variables can either be incremented (increased by 1 in each iteration), decremented (decreased by 1 in each iteration) or can be increased or decreased by a specific amount.";
    _thirdTextView.font =textfont;
    _thirdTextView.frame = CGRectMake(30, 550, 300, 200);
    _thirdTextView.editable=NO;
    _fourthTextView.text =@"Loop Body: This is the code to be executed with each iteration.";
    _fourthTextView.font=textfont;
    _fourthTextView.editable=NO;
    
    self.iterationImage.image = [UIImage imageNamed:@"initializerimage.png"];
    self.statementimg.image = [UIImage imageNamed:@"conditionImage.png"];
    self.Controlimage.image = [UIImage imageNamed:@"bodyimage.png"];
    self.variableimage.image =[UIImage imageNamed:@"incrementimg"];
   
    _myLabel.frame=CGRectMake(30,300,750,600);
   
    _myLabel.font = [UIFont fontWithName:@"Courier New" size:20];
    
    
    _myLabel.editable = NO;
}
/*
 This method has terms that a for loop has.  The labels have the ability to be drag and dropped and a specific location has been set so that each individual label can only be placed in one location.  If the label is dragged to the wrong place, it should return to its original location
 */

- (IBAction)termsButton:(UIBarButtonItem *)sender {
     _titleLabel.frame = CGRectMake(300, 250, self.view.frame.size.width-20, 20);
    _myLabel.text= @" ";
    _firstTextView.text =@" ";
    _secondTextView.text = @" ";
    _thirdTextView.text =@" ";
    _fourthTextView.text =@" ";
    _titleLabel.text= @" ";
    _label1.text=@" " ;
    _label1.backgroundColor= Nil;
    _label2.text=@" ";
    _label2.backgroundColor= Nil;
    _label3.text=@" ";
    _label3.backgroundColor=Nil;
    _label4.text =@" ";
    _label4.backgroundColor= Nil;
    self.statementimg.hidden = YES;
    self.Controlimage.hidden = YES;
    self.variableimage.hidden =YES;
    self.iterationImage.hidden=YES;
    _myLabel.frame=CGRectMake(30,300,750,600);
    UIFont *textfont = [UIFont fontWithName:@"Courier New" size:16];
    //_myLabel.font = [UIFont fontWithName:@"Courier New" size:20];
   // _myLabel.textColor = [UIColor redColor];
    _myLabel.text= @" ";
    
    self.statementimg.hidden = YES;
    self.Controlimage.hidden = YES;
    self.variableimage.hidden =YES;
    self.iterationImage.hidden=YES;
    
    _firstTextView.text = @"Variable --->";
    _firstTextView.frame= CGRectMake(30, 350, 200, 100);
    _firstTextView.font = textfont;
    _firstTextView.backgroundColor =Nil;
   _secondTextView.text =@"Loop Control variable -->";
    _secondTextView.frame= CGRectMake(30, 490, 200, 100);
    _secondTextView.font = textfont;
   _thirdTextView.text =@"Iteration -->";
    _thirdTextView.frame = CGRectMake(30, 650, 200, 100);
    _thirdTextView.font =textfont;
   _fourthTextView.text =@"Statement-->";
    _fourthTextView.frame= CGRectMake(30, 790, 200, 100);
    _fourthTextView.font= textfont;
    
    _titleLabel.frame = CGRectMake(100, 200, 700, 100);
    _titleLabel.font = textfont;
    _titleLabel.text = @"Match the corresponding terms with the correct defenitions";
    
    self.label1.frame = CGRectMake(600, 350, 150, 20);
    _label1.font = textfont;
    _label1.text= @"The number of times the code in the loop body has been executed";
    //_label1.backgroundColor =Nil;
    self.label1.numberOfLines=0;
    [self.label1 sizeToFit];
    self.label1.userInteractionEnabled= YES;
    
    self.label2.frame = CGRectMake(600, 490, 150, 20);
    _label2.font= textfont;
    _label2.text = @"A line of code to be executed";
    self.label2.numberOfLines=0;
    [self.label2 sizeToFit];
    self.label2.userInteractionEnabled=YES;
    
    self.label3.frame = CGRectMake(600, 570, 150, 20);
    _label3.font= textfont;
    _label3.text = @"A symbolic name or storage location given to a piece of data stored in a computer's memory";
    self.label3.numberOfLines=0;
    [self.label3 sizeToFit];
    self.label3.userInteractionEnabled=YES;
    
    self.label4.frame = CGRectMake(600, 730, 150, 20);
    _label4.font= textfont;
    _label4.text =@"the variable that is incremented or decremented and is used to keep track of the number of iterations in a loop";
    self.label4.userInteractionEnabled=YES;
    self.label4.numberOfLines=0;
    [self.label4 sizeToFit];
   
    
    
    _placeholder1.backgroundColor = [[UIColor alloc] initWithRed:.5 green:.5 blue:.5 alpha:.2];
    _placeholder1.frame = CGRectMake(300, 320, 150, 130);
    _placeholder2.backgroundColor=[[UIColor alloc] initWithRed:.5 green:.5 blue:.5 alpha:.2];
    _placeholder2.frame = CGRectMake(300, 460, 150, 130);
    _placeholder3.backgroundColor=[[UIColor alloc] initWithRed:.5 green:.5 blue:.5 alpha:.2];
    _placeholder3.frame=CGRectMake(300, 620, 150, 130);
    _placeholder4.backgroundColor=[[UIColor alloc] initWithRed:.5 green:.5 blue:.5 alpha:.2];
    _placeholder4.frame=CGRectMake(300, 760, 150, 130);

    

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
    _placeholder1.backgroundColor= Nil;
    _placeholder2.backgroundColor= Nil;
    _placeholder3.backgroundColor=Nil;
    _placeholder4.backgroundColor=Nil;
    self.statementimg.hidden = YES;
    self.Controlimage.hidden = YES;
    self.variableimage.hidden =YES;
    self.iterationImage.hidden=YES;
    
    //create loop structure
    
    UIFont *loopBodyFont = [UIFont fontWithName:@"Courier New" size:25];
    UIFont *answerLabelFont = [UIFont fontWithName:@"Courier New" size:20];
    CGFloat answerLabelWidth = 140;
    CGFloat answerLabelHeight = 25;
   // UIColor *answerLabelColor = [[UIColor alloc] initWithRed:.5 green:.5 blue:.5 alpha:.2];
    
    _titleLabel.frame = CGRectMake(20, 350, self.view.frame.size.width-20, 20);
    _titleLabel.font = loopBodyFont;
    _titleLabel.text = @"for (          ;          ;          )";
    
    _label4.frame= CGRectMake(20, 360, 100, 100);
    _label4.font= loopBodyFont;
    _label4.text =@"{";
    
    _label1.frame =CGRectMake(100, 350, answerLabelWidth, answerLabelHeight);
    _label1.font =answerLabelFont;
    _label1.backgroundColor = [UIColor yellowColor];
    _label1.text = @" i = 0";
    
    _label2.frame = CGRectMake(260, 350, answerLabelWidth, answerLabelHeight);
    _label2.font=answerLabelFont;
    _label2.text = @" i < 5" ;
    _label2.backgroundColor = [UIColor cyanColor];
    
    _label3.frame = CGRectMake(430, 350, answerLabelWidth, answerLabelHeight);
    _label3.font = answerLabelFont;
    _label3.text = @"i++";
    _label3.backgroundColor =[UIColor orangeColor];
    
    _firstTextView.frame= CGRectMake(30, 420, 300, 100);
    _firstTextView.font =loopBodyFont;
    _firstTextView.backgroundColor= Nil;
    _firstTextView.text = @"hello world!!";
    
    _secondTextView.frame= CGRectMake(15, 450, 100, 100);
    _secondTextView.font= loopBodyFont;
    _secondTextView.text = @" } ";
    
    
    
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
        BOOL viewsClose = [self isThisView:label nearTo:self.placeholder1 withBuffer:50];
        if (viewsClose == YES)
        {
            label.center = self.placeholder1.center;
        } else {
            [label setFrame:_label1.frame];
            //[label setFrame:CGRectMake(400, 550, 100, 60)];
        }
    }

}




@end
