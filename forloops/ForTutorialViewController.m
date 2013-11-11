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
    _myLabel.text=@" ";
    _label1.font = [UIFont fontWithName:@"Courier New" size:30];
    _label1.frame=CGRectMake(30,300,750,600);
    _label1.text = @"What is a loop? A loop is a programming structure that allows code to be repeated until a certain condition is met.";
    self.label1.numberOfLines=0;
    [self.label1 sizeToFit];
    
   
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
      _myButton.hidden = YES;
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
    _placeholder1.text= @" ";
    _placeholder2.text=@"";
    _placeholder3.text=@"";
    _placeholder4.text=@"";
    _placeholder1.backgroundColor= Nil;
    _placeholder2.backgroundColor= Nil;
    _placeholder3.backgroundColor=Nil;
    _placeholder4.backgroundColor=Nil;
   _myLabel.text =@"";
  self.statementimg.hidden = YES;
    self.Controlimage.hidden = YES;
    self.variableimage.hidden =YES;
    self.iterationImage.hidden=YES;
    _userInput.hidden = YES;
    
   
    
      _titleLabel.text= @"What is a Loop? ";
    _label1.frame=CGRectMake(30,300,750,600);
  
    _label1.font = [UIFont fontWithName:@"Courier New" size:30];
    _label1.text = @"What is a loop? A loop is a programming structure that allows code to be repeated until a certain condition is met.";
   self.label1.numberOfLines=0;
    [self.label1 sizeToFit];
   
    
}
/*
 This method shows how each part of the loop looks like.
 
 */

- (IBAction)LookLikeButton:(UIBarButtonItem *)sender {
   _titleLabel.frame = CGRectMake(300, 250, self.view.frame.size.width-20, 20);
     UIFont *textfont = [UIFont fontWithName:@"Courier New" size:16];
       _myLabel.text= @" ";
      _myButton.hidden = YES;
    _label1.text=@" " ;
    _label1.backgroundColor= Nil;
    _label2.text=@" ";
    _label2.backgroundColor= Nil;
    _label3.text=@" ";
    _label3.backgroundColor=Nil;
    _label4.text =@" ";
    _label4.backgroundColor= Nil;
    _placeholder1.text= @" ";
    _placeholder2.text=@"";
    _placeholder3.text=@"";
    _placeholder4.text=@"";
    self.statementimg.hidden = NO;
    self.Controlimage.hidden = NO;
    self.variableimage.hidden =NO;
    self.iterationImage.hidden=NO;
    _placeholder1.backgroundColor= Nil;
    _placeholder2.backgroundColor= Nil;
    _placeholder3.backgroundColor=Nil;
    _placeholder4.backgroundColor=Nil;
    _userInput.hidden = YES;
    
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
    _thirdTextView.frame = CGRectMake(30, 560, 300, 200);
    _thirdTextView.editable=NO;
    _fourthTextView.frame= CGRectMake(30, 750, 300, 200);
    _fourthTextView.text =@"Loop Body: This is the code to be executed with each iteration.";
    _fourthTextView.font=textfont;
    _fourthTextView.editable=NO;
    
    self.iterationImage.image = [UIImage imageNamed:@"initializerImage2.png"];
    _iterationImage.frame = CGRectMake(360, 330, 330, 80);
    self.statementimg.image = [UIImage imageNamed:@"conditionImage2.png"];
    _statementimg.frame=CGRectMake(360, 450, 330, 80);
    self.Controlimage.image = [UIImage imageNamed:@"iterationImage2.png"];
    _Controlimage.frame= CGRectMake(360, 580, 330, 80);
    self.variableimage.image =[UIImage imageNamed:@"bodyImage2.png"];
    _variableimage.frame= CGRectMake(360, 720, 330, 80);
   
    _myLabel.frame=CGRectMake(30,300,750,600);
   
    _myLabel.font = [UIFont fontWithName:@"Courier New" size:20];
    
    
    _myLabel.editable = NO;
}
/*
 This method has terms that a for loop has.  The labels have the ability to be drag and dropped and a specific location has been set so that each individual label can only be placed in one location.  If the label is dragged to the wrong place, it should return to its original location
 */

- (IBAction)termsButton:(UIBarButtonItem *)sender {
      _myButton.hidden = YES;
    _userInput.hidden = YES;
    
    _firstTextView.text =@" ";
    
    _secondTextView.text = @" ";
    _thirdTextView.text =@" ";
    _fourthTextView.text =@" ";
    _titleLabel.text= @" ";
    _placeholder1.text= @" ";
    _placeholder2.text=@"";
    _placeholder3.text=@"";
    _placeholder4.text=@"";
    _label1.text=@" " ;
    _label1.backgroundColor= Nil;
    _label2.text=@" ";
    _label2.backgroundColor= Nil;
    _label3.text=@" ";
    _label3.backgroundColor=Nil;
    _label4.text =@" ";
    _label4.backgroundColor= Nil;
    //self.statementimg.hidden = YES;
    //self.Controlimage.hidden = YES;
    //self.variableimage.hidden =YES;
    //self.iterationImage.hidden=YES;
    _titleLabel.frame = CGRectMake(300, 250, self.view.frame.size.width-20, 20);
    _myLabel.text= @" ";
    
    _myLabel.frame=CGRectMake(30,300,750,600);
    UIFont *textfont = [UIFont fontWithName:@"Courier New" size:16];
    //_myLabel.font = [UIFont fontWithName:@"Courier New" size:20];
   // _myLabel.textColor = [UIColor redColor];
    _myLabel.text= @" ";
   
    
    _firstTextView.text= @"Variable --->";
    _firstTextView.frame= CGRectMake(30, 350, 200, 100);
    _firstTextView.font = textfont;
    _firstTextView.backgroundColor =Nil;
   _secondTextView.text =@"Loop Control variable -->";
    _secondTextView.frame= CGRectMake(30, 490, 200, 100);
    _secondTextView.font = textfont;
   _thirdTextView.text =@"Iteration -->";
    _thirdTextView.frame = CGRectMake(30, 680, 200, 100);
    _thirdTextView.font =textfont;
   _fourthTextView.text =@"Statement-->";
    _fourthTextView.frame= CGRectMake(30, 870, 200, 100);
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
    _placeholder1.frame = CGRectMake(300, 300, 150, 150);
    _placeholder2.backgroundColor=[[UIColor alloc] initWithRed:.5 green:.5 blue:.5 alpha:.2];
    _placeholder2.frame = CGRectMake(300, 470, 150, 150);
    _placeholder3.backgroundColor=[[UIColor alloc] initWithRed:.5 green:.5 blue:.5 alpha:.2];
    _placeholder3.frame=CGRectMake(300, 640, 150, 150);
    _placeholder4.backgroundColor=[[UIColor alloc] initWithRed:.5 green:.5 blue:.5 alpha:.2];
    _placeholder4.frame=CGRectMake(300, 810, 150, 150);

    self.variableimage.image =[UIImage imageNamed:@"feedback_correct.png"];
    _variableimage.frame=CGRectMake(450, 300, 50, 50);
    _variableimage.hidden =YES;
    self.Controlimage.image = [UIImage imageNamed:@"feedback_correct.png"];
    _Controlimage.frame=CGRectMake(450, 470, 50, 50);
    _Controlimage.hidden =YES;
    self.iterationImage.image = [UIImage imageNamed:@"feedback_correct.png"];
    _iterationImage.frame = CGRectMake(450, 640, 50, 50);
    _iterationImage.hidden = YES;
    self.statementimg.image = [UIImage imageNamed:@"feedback_correct.png"];
    _statementimg.frame =CGRectMake(450, 810, 50, 50);
    _statementimg.hidden = YES;
   
   

    NSMutableSet *labels = [[NSMutableSet alloc] init];
    [labels addObject:self.label1];
    [labels addObject:self.label2];
    [labels addObject:self.label3];
    [labels addObject:self.label4];
    
    
  UIPanGestureRecognizer *pan = [[UIPanGestureRecognizer alloc] initWithTarget:self action:@selector(panDetected:)];
    [self.label1 addGestureRecognizer:pan];
    
    UIPanGestureRecognizer *pan2 = [[UIPanGestureRecognizer alloc] initWithTarget:self action:@selector (panDetected2:)];
    [self.label2 addGestureRecognizer:pan2];
    
    UIPanGestureRecognizer *pan3 = [[UIPanGestureRecognizer alloc] initWithTarget:self action:@selector (panDetected3:)];
    [self.label3 addGestureRecognizer:pan3];
    
    UIPanGestureRecognizer *pan4 = [[UIPanGestureRecognizer alloc] initWithTarget:self action:@selector (panDetected4:)];
    [self.label4 addGestureRecognizer:pan4];

    
    
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
    
    -(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
    {
        // this is so answer labels go back to original position
        UITouch *touch = [[event allTouches] anyObject];
        UIView *theView = touch.view;
        
        BOOL isOnInitialization = [self isThisView:theView nearTo:_label1 withBuffer:0];
        BOOL isOnTerminatingCondition = [self isThisView:theView nearTo:_label2 withBuffer:0];
        BOOL isOnIncrement = [self isThisView:theView nearTo:_label3 withBuffer:0];
        
        if (isOnInitialization == NO
            && isOnTerminatingCondition == NO
            && isOnIncrement == NO)
        {
            _tempFrame = theView.frame;
        } else if (isOnInitialization == YES) {
            _tempFrame = _originalInitializationFrame;
        } else if (isOnTerminatingCondition == YES) {
            _tempFrame = _originalTerminatingFrame;
        } else if (isOnIncrement == YES) {
            _tempFrame = _originalIncrementFrame;
        }
    }
    
    -(void) panDetected: (UIPanGestureRecognizer * )sender
    {
        UIView *label = sender.view;
        CGPoint amtOfTranslation = [sender translationInView:self.view];
        //get the image view's center, add the amount of translation to it and set the center of the image view to the new position
        CGPoint imageViewPosition =label.center;
        imageViewPosition.x = imageViewPosition.x + amtOfTranslation.x;
        imageViewPosition.y = imageViewPosition.y + amtOfTranslation.y;
        label.center = imageViewPosition;
        //set the translation back to (0,0) otherwise the translation keeps compunding. As you move the finger on the screen, the image goes away from the position of touch if this is not done.
        
        
        [sender setTranslation:CGPointZero inView:self.view];
        if (sender.state == UIGestureRecognizerStateEnded)
        {
          
            BOOL iterationNear = [self isThisView:label nearTo:self.placeholder3 withBuffer:50];
            
            if (iterationNear == YES)
            {
                label.center = self.placeholder3.center;
               _iterationImage.hidden = NO;
            } else {
                
                [label setFrame:CGRectMake(600, 350, 150, 100)];
            }
        }
        
    }
    -(void) panDetected2: (UIPanGestureRecognizer * )sender
    {
      UIView *label = sender.view;
        CGPoint amtOfTranslation = [sender translationInView:self.view];
        //get the image view's center, add the amount of translation to it and set the center of the image view to the new position
        CGPoint imageViewPosition =label.center;
        imageViewPosition.x = imageViewPosition.x + amtOfTranslation.x;
        imageViewPosition.y = imageViewPosition.y + amtOfTranslation.y;
       label.center = imageViewPosition;
        //set the translation back to (0,0) otherwise the translation keeps compunding. As you move the finger on the screen, the image goes away from the position of touch if this is not done.
        
        
        [sender setTranslation:CGPointZero inView:self.view];
                     if (sender.state == UIGestureRecognizerStateEnded)
        {
            
            BOOL iterationNear = [self isThisView:label nearTo:self.placeholder4 withBuffer:80];
         
            if (iterationNear == YES)
            {
                label.center = self.placeholder4.center;
                _statementimg.hidden= NO;
            } else {
               
                [label setFrame:CGRectMake(600, 450, 150, 100)];
            }
                    }

        }
    
    
    -(void) panDetected3: (UIPanGestureRecognizer * )sender
    {
        UIView *label = sender.view;
        CGPoint amtOfTranslation = [sender translationInView:self.view];
        //get the image view's center, add the amount of translation to it and set the center of the image view to the new position
        CGPoint imageViewPosition =label.center;
        imageViewPosition.x = imageViewPosition.x + amtOfTranslation.x;
        imageViewPosition.y = imageViewPosition.y + amtOfTranslation.y;
        label.center = imageViewPosition;
        //set the translation back to (0,0) otherwise the translation keeps compunding. As you move the finger on the screen, the image goes away from the position of touch if this is not done.
        
        
        [sender setTranslation:CGPointZero inView:self.view];
        if (sender.state == UIGestureRecognizerStateEnded)
        {
            
            BOOL iterationNear = [self isThisView:label nearTo:self.placeholder1 withBuffer:50];
            
            if (iterationNear == YES)
            {
                label.center = self.placeholder1.center;
                _variableimage.hidden=NO;
             
            } else {
                
                [label setFrame:CGRectMake(600, 550, 150, 100)];
            }
        }
        
    }

    
    -(void) panDetected4: (UIPanGestureRecognizer * )sender
    {
        UIView *label = sender.view;
        CGPoint amtOfTranslation = [sender translationInView:self.view];
        //get the image view's center, add the amount of translation to it and set the center of the image view to the new position
        CGPoint imageViewPosition =label.center;
        imageViewPosition.x = imageViewPosition.x + amtOfTranslation.x;
        imageViewPosition.y = imageViewPosition.y + amtOfTranslation.y;
        label.center = imageViewPosition;
        //set the translation back to (0,0) otherwise the translation keeps compunding. As you move the finger on the screen, the image goes away from the position of touch if this is not done.
        
        
        [sender setTranslation:CGPointZero inView:self.view];
        if (sender.state == UIGestureRecognizerStateEnded)
        {
            
            BOOL iterationNear = [self isThisView:label nearTo:self.placeholder2 withBuffer:50];
            
            if (iterationNear == YES)
            {
                label.center = self.placeholder2.center;
                _Controlimage.hidden=NO;
            } else {
                
                [label setFrame:CGRectMake(600, 650, 150, 100)];
            }
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
    
    _fourthTextView.frame= CGRectMake(20, 360, 100, 100);
    _fourthTextView.font= loopBodyFont;
    _fourthTextView.text =@"{";
    
    _placeholder1.frame =CGRectMake(100, 350, answerLabelWidth, answerLabelHeight);
    _placeholder1.font =answerLabelFont;
    _placeholder1.backgroundColor = [UIColor yellowColor];
    _placeholder1.text = @" i = 0";
    
    _placeholder2.frame = CGRectMake(260, 350, answerLabelWidth, answerLabelHeight);
    _placeholder2.font=answerLabelFont;
    _placeholder2.text = @" i < 5" ;
    _placeholder2.backgroundColor = [UIColor cyanColor];
    
    _placeholder3.frame = CGRectMake(430, 350, answerLabelWidth, answerLabelHeight);
    _placeholder3.font = answerLabelFont;
    _placeholder3.text = @"i++";
    _placeholder3.backgroundColor =[UIColor orangeColor];
    
    
    _userInput.hidden = NO;
    _userInput.frame =CGRectMake(30, 420, 300, 70);

    _secondTextView.frame= CGRectMake(15, 490, 100, 100);
    _secondTextView.font= loopBodyFont;
    _secondTextView.text = @" } ";
    
   

    
    _myButton.hidden = NO;
    
    _myLabel.editable = NO;
   
}

- (IBAction)VideoButton:(UIBarButtonItem *)sender {
    _myButton.hidden = YES;
    _userInput.hidden = YES;
    
    _firstTextView.text =@" ";
    
    _secondTextView.text = @" ";
    _thirdTextView.text =@" ";
    _fourthTextView.text =@" ";
    _titleLabel.text= @" ";
    _placeholder1.text= @" ";
    _placeholder2.text=@"";
    _placeholder3.text=@"";
    _placeholder4.text=@"";
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
    _placeholder4.hidden = YES;
    
   
    UIWebView *webView = [[UIWebView alloc] initWithFrame:CGRectMake(0.0, 0.0,840.0,840.0)];
    NSURL *URL = [NSURL URLWithString:@"http://www.youtube.com/watch?v=rjkYAs6gAkk"];
    NSURLRequest *requestObj = [NSURLRequest requestWithURL:URL];
   
    [webView loadRequest:requestObj];
    [self.view addSubview:webView];
}





- (IBAction)myButton:(UIButton *)sender {
   //  UIFont *textfont = [UIFont fontWithName:@"Courier New" size:16];
    _thirdTextView.frame =CGRectMake(30, 590, 200, 1000);
    _firstTextView.frame =CGRectMake(30, 570, 200, 1000);
    _label1.frame =CGRectMake(30, 550, 200, 1000);
    
    NSString *string1 = self.userInput.text;
    NSString *string2 = self.userInput.text;
    NSString *string3 = self.userInput.text;
    NSString *string4 = self.userInput.text;
    NSString *string5 = self.userInput.text;
    
    _thirdTextView.text = [NSString stringWithFormat:@"%@\r%@\r%@\r%@\r%@",string1, string2,string3, string4, string5];
   
    //_thirdTextView.text = @" hello world!! hello world!!   hello world!!    hello world!!   hello world!!";
   
    [self.thirdTextView sizeToFit];
}
@end
