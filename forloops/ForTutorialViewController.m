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
    _label1.text = @"What is a loop? A loop is a programming structure that allows code to be repeated until a certain condition is met. This allows you to run a specific time of code several times without having to re type it. ";
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
- (IBAction)WLoopButton:(UIButton *)sender{
    /*****
     This section resets the view and all of the labels and images
     *****/
    _titleLabel.frame = CGRectMake(300, 250, self.view.frame.size.width-20, 20);
    [self resetView];
    
   
    _titleLabel.textColor = [UIColor blackColor];
      _titleLabel.text= @"What is a Loop? ";
    _label1.frame=CGRectMake(30,300,750,600);
  
    _label1.font = [UIFont fontWithName:@"Courier New" size:30];
    _label1.text = @"What is a loop? A loop is a programming structure that allows code to be repeated until a certain condition is met. This allows you to run a specific time of code several times without having to re type it";
   self.label1.numberOfLines=0;
    [self.label1 sizeToFit];
   
    
}



/*
 This method shows how each part of the loop looks like.
 
 */
- (IBAction)LookButton:(UIButton *)sender {
    /*****
     This section resets the view and all of the labels and images
     *****/
    [self resetView];
   _titleLabel.frame = CGRectMake(300, 250, self.view.frame.size.width-20, 20);
     UIFont *textfont = [UIFont fontWithName:@"Courier New" size:16];
    [self resetView];
    
    _titleLabel.text= @"What does it look Like? ";
    
    
    _firstTextView.text= @" Initialization: This is where a variable called a loop control variable that is used to keep track of the number of iterations the loop has gone through.";
    _firstTextView.frame = CGRectMake(30, 330, 300, 200);
    _firstTextView.font = textfont;
    //_firstTextView.textColor = [UIColor yellowColor];
    _firstTextView.editable =NO;
    
    _secondTextView.text = @" Terminating Condition: A statement that defines a test condition the loop control variable must meet in order to terminate the loop.";
    _secondTextView.font =textfont;
    _secondTextView.frame= CGRectMake(30, 450, 300, 200);
   // _secondTextView.textColor = [UIColor cyanColor];
    _secondTextView.editable=NO;
    
    _thirdTextView.text = @"Increment/Decrement of Loop Control Variable: Loop control variables can either be incremented (increased by 1 in each iteration), decremented (decreased by 1 in each iteration) or can be increased or decreased by a specific amount.";
    _thirdTextView.font =textfont;
    _thirdTextView.frame = CGRectMake(30, 560, 300, 200);
    _thirdTextView.editable=NO;
    _fourthTextView.frame= CGRectMake(30, 750, 300, 200);
    _fourthTextView.text =@"Loop Body: This is the code to be executed with each iteration.";
    _fourthTextView.font=textfont;
  //  _fourthTextView.textColor =[UIColor orangeColor];
    _fourthTextView.editable=NO;
    
    self.iterationImage.image = [UIImage imageNamed:@"initializerImage2.png"];
    _iterationImage.frame = CGRectMake(360, 330, 330, 80);
    _iterationImage.hidden = NO;
    self.statementimg.image = [UIImage imageNamed:@"conditionImage2.png"];
    _statementimg.frame=CGRectMake(360, 450, 330, 80);
    _statementimg.hidden = NO;
    self.Controlimage.image = [UIImage imageNamed:@"iterationImage2.png"];
    _Controlimage.frame= CGRectMake(360, 580, 330, 80);
    _Controlimage.hidden = NO;
    self.variableimage.image =[UIImage imageNamed:@"bodyImage2.png"];
    _variableimage.frame= CGRectMake(360, 720, 330, 80);
    _variableimage.hidden = NO;
   
    _myLabel.frame=CGRectMake(30,300,750,600);
   
    _myLabel.font = [UIFont fontWithName:@"Courier New" size:20];
    _myLabel.editable = NO;
}





/*
 This method has terms that a for loop has.  The labels have the ability to be drag and dropped and a specific location has been set so that each individual label can only be placed in one location.  If the label is dragged to the wrong place, it should return to its original location
 */
-  (IBAction)TermButton:(UIButton *)sender {
    /*****
     This section resets the view and all of the labels and images
     *****/
    [self resetView];
    
    UIFont *textfont = [UIFont fontWithName:@"Courier New" size:16];
   
    _firstTextView.text= @"Loop Counter--->";
    _firstTextView.frame= CGRectMake(30, 350, 200, 100);
    _firstTextView.font = textfont;
    _firstTextView.backgroundColor =Nil;
   _secondTextView.text =@"Terminating Condition--->";
    _secondTextView.frame= CGRectMake(30, 490, 200, 100);
    _secondTextView.font = textfont;
   _thirdTextView.text =@"Increment/Decrement--->";
    _thirdTextView.frame = CGRectMake(30, 680, 200, 100);
    _thirdTextView.font =textfont;
   _fourthTextView.text =@"Loop Body--->";
    _fourthTextView.frame= CGRectMake(30, 870, 200, 100);
    _fourthTextView.font= textfont;
    
    _titleLabel.frame = CGRectMake(100, 200, 700, 100);
    _titleLabel.font = textfont;
    _titleLabel.text = @"Match the corresponding terms with the correct definitions";
    
    self.label1.frame = CGRectMake(600, 300, 150, 20);
    _label1.font = textfont;
    _label1.text= @"The action that will be performed on the loop counter variable with each loop iteration.";
    self.label1.numberOfLines=0;
    [self.label1 sizeToFit];
    self.label1.userInteractionEnabled= YES;
    
    self.label2.frame = CGRectMake(600, 490, 150, 20);
    _label2.font= textfont;
    _label2.text = @"The line(s) of code to be executed.";
    self.label2.numberOfLines=0;
    [self.label2 sizeToFit];
    self.label2.userInteractionEnabled=YES;
    
    self.label3.frame = CGRectMake(600, 570, 150, 20);
    _label3.font= textfont;
    _label3.text = @"The variable that will incremented or decremented with each iteration of the loop.";
    self.label3.numberOfLines=0;
    [self.label3 sizeToFit];
    self.label3.userInteractionEnabled=YES;
    
    self.label4.frame = CGRectMake(600, 730, 150, 20);
    _label4.font= textfont;
    _label4.text =@"The condition that has to be TRUE in order for the loop to end.";
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

    
- (IBAction)ExampleButton:(UIButton *)sender {
    /*****
     This section resets the view and all of the labels and images
     *****/
    [self resetView];
    [self populateExampleOptionsArray];
    
    //create loop structure
    
    UIFont *loopBodyFont = [UIFont fontWithName:@"Courier New" size:25];
    UIFont *answerLabelFont = [UIFont fontWithName:@"Courier New" size:20];
    CGFloat answerLabelWidth = 140;
    CGFloat answerLabelHeight = 25;
    
    _exampleInstructions = [[UILabel alloc] initWithFrame:CGRectMake(20, 250, self.view.frame.size.width-60, 60)];
    _exampleInstructions.text = @"Click on each of the loop components to change their values. Then click 'Run it' to see what happens!";
    [_exampleInstructions setNumberOfLines:0];
    [_exampleInstructions sizeToFit];
    [self.view addSubview:_exampleInstructions];
 
    _titleLabel.frame = CGRectMake(20, 350, self.view.frame.size.width-20, 20);
    _titleLabel.font = loopBodyFont;
    _titleLabel.text = @"for (          ;          ;          )";
    
    _fourthTextView.frame= CGRectMake(12, 360, 100, 100);
    _fourthTextView.font= loopBodyFont;
    _fourthTextView.text =@"{";
    
    _exampleInitialization = [[UIButton alloc] initWithFrame:CGRectMake(100, 350, answerLabelWidth, answerLabelHeight)];
    _exampleInitialization.backgroundColor = [UIColor yellowColor];
    [_exampleInitialization setTitle:@"int i = 5" forState:UIControlStateNormal];
    [_exampleInitialization setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [_exampleInitialization addTarget:self action:@selector(exampleInitializationButtonClicked) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:_exampleInitialization];
    
    _exampleTerminating = [[UIButton alloc] initWithFrame:CGRectMake(260, 350, answerLabelWidth, answerLabelHeight)];
    _exampleTerminating.backgroundColor = [UIColor cyanColor];
    [_exampleTerminating setTitle:@"i < 5" forState:UIControlStateNormal];
    [_exampleTerminating setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [_exampleTerminating addTarget:self action:@selector(exampleTerminatingButtonClicked) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:_exampleTerminating];
    
    _exampleIncrement = [[UIButton alloc] initWithFrame:CGRectMake(430, 350, answerLabelWidth, answerLabelHeight)];
    _exampleIncrement.backgroundColor = [UIColor orangeColor];
    [_exampleIncrement setTitle:@"i++" forState:UIControlStateNormal];
    [_exampleIncrement setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [_exampleIncrement addTarget:self action:@selector(exampleIncrementButtonClicked) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:_exampleIncrement];
    
    _exampleLoopBody = [[UILabel alloc] initWithFrame:CGRectMake(40, 380, self.view.frame.size.width-100, 70)];
    _exampleLoopBody.text = @"System.out.println(\"Loops are so loopy!\");";
    _exampleLoopBody.font = answerLabelFont;
    [self.view addSubview:_exampleLoopBody];

    _secondTextView.frame= CGRectMake(12, 420, 100, 100);
    _secondTextView.font= loopBodyFont;
    _secondTextView.text = @"}";
    
    _myButton.hidden = NO;
    _myLabel.editable = NO;
    
    _exampleOutput = [[UILabel alloc] initWithFrame:CGRectMake(20,500,300,100)];
    _exampleOutput.text = @"Loop Output";
    _exampleOutput.font = [UIFont fontWithName:@"Helvetica" size:25];
    [self.view addSubview:_exampleOutput];
   
    
}

-(void) populateExampleOptionsArray {
    _exampleInitializationArray = [[NSArray alloc] initWithObjects:
                                   @"int i = 0",
                                   @"int i = 1",
                                   @"int i = 5", nil];
    
    _exampleTerminatingArray = [[NSArray alloc] initWithObjects:
                                @"i < 5",
                                @"i <= 5",
                                @"i > 0", nil];
    
    _exampleIncrementArray = [[NSArray alloc] initWithObjects:
                              @"i++",
                              @"i--", nil];
}

-(void)exampleInitializationButtonClicked {
    _exampleButtonPressed = @"initialization";
    UIActionSheet *actionSheet = [[UIActionSheet alloc] initWithTitle:@"Choose an option."
                                                             delegate:self
                                                    cancelButtonTitle:nil
                                               destructiveButtonTitle:nil
                                                    otherButtonTitles:nil];
    
    for (NSString *str in _exampleInitializationArray) {
        [actionSheet addButtonWithTitle:str];
    }
    
    [actionSheet addButtonWithTitle:@"Cancel"];
    actionSheet.cancelButtonIndex = [_exampleInitializationArray count];
    
    [actionSheet showInView:self.view];
}

-(void)exampleTerminatingButtonClicked {
    _exampleButtonPressed = @"terminating";
    UIActionSheet *actionSheet = [[UIActionSheet alloc] initWithTitle:@"Choose an option."
                                                             delegate:self
                                                    cancelButtonTitle:nil
                                               destructiveButtonTitle:nil
                                                    otherButtonTitles:nil];
    
    for (NSString *str in _exampleTerminatingArray) {
        [actionSheet addButtonWithTitle:str];
    }
    
    [actionSheet addButtonWithTitle:@"Cancel"];
    actionSheet.cancelButtonIndex = [_exampleTerminatingArray count];
    
    [actionSheet showInView:self.view];
    
}

-(void)exampleIncrementButtonClicked {
    _exampleButtonPressed = @"increment";
    UIActionSheet *actionSheet = [[UIActionSheet alloc] initWithTitle:@"Choose an option."
                                                             delegate:self
                                                    cancelButtonTitle:nil
                                               destructiveButtonTitle:nil
                                                    otherButtonTitles:nil];
    
    for (NSString *str in _exampleIncrementArray) {
        [actionSheet addButtonWithTitle:str];
    }
    
    [actionSheet addButtonWithTitle:@"Cancel"];
    actionSheet.cancelButtonIndex = [_exampleIncrementArray count];
    
    [actionSheet showInView:self.view];
}

- (void) actionSheet:(UIActionSheet *) actionSheet didDismissWithButtonIndex:(NSInteger)buttonIndex {
    if ([_exampleButtonPressed isEqualToString:@"initialization"]) {
        if (buttonIndex != _exampleInitializationArray.count) {
           [_exampleInitialization setTitle:_exampleInitializationArray[buttonIndex] forState:UIControlStateNormal];
        }
    } else if ([_exampleButtonPressed isEqualToString:@"terminating"]) {
        if (buttonIndex != _exampleTerminatingArray.count) {
            [_exampleTerminating setTitle:_exampleTerminatingArray[buttonIndex] forState:UIControlStateNormal];
        }
    } else if ([_exampleButtonPressed isEqualToString:@"increment"]) {
        if (buttonIndex != _exampleIncrementArray.count) {
            [_exampleIncrement setTitle:_exampleIncrementArray[buttonIndex] forState:UIControlStateNormal];
        }
    }
}

-(void) resetView {
    _myLabel.text = @"";
    _variableimage.hidden = YES;
    _Controlimage.hidden = YES;
    _iterationImage.hidden = YES;
    _statementimg.hidden = YES;
    
    _firstTextView.text = @"";
    _secondTextView.text = @"";
    _thirdTextView.text = @"";
    _fourthTextView.text = @"";
    
    _label1.backgroundColor= Nil;
    _label1.text = @"";
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
    
    [_exampleLoopBody removeFromSuperview];
    
    _myButton.hidden = YES;
    
    _userInput.hidden = YES;
    
    _titleLabel.frame = CGRectMake(300, 250, self.view.frame.size.width-20, 20);
    
    _myLabel.text= @" ";
    _myLabel.frame=CGRectMake(30,300,750,600);
    
    [_exampleInitialization removeFromSuperview];
    [_exampleTerminating removeFromSuperview];
    [_exampleIncrement removeFromSuperview];
    
    [_exampleOutput removeFromSuperview];
    [_exampleInstructions removeFromSuperview];
}

- (IBAction)VideoButton:(UIBarButtonItem *)sender {
    /*****
     This section resets the view and all of the labels and images
     *****/
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
    _thirdTextView.frame =CGRectMake(30, 550, 200, 1000);
    _thirdTextView.text = @"";
    
    NSString *output = @"Loops are so loopy!";
    
    NSString *initialization = _exampleInitialization.currentTitle;
    NSString *terminating = _exampleTerminating.currentTitle;
    NSString *increment = _exampleIncrement.currentTitle;
    
    if ([increment isEqualToString:@"i++"]) {
        if ([initialization isEqualToString:@"int i = 0"]) {
            if([terminating isEqualToString:@"i < 5"]) {
                for (int i = 0; i < 5; i++) {
                    _thirdTextView.text = [NSString stringWithFormat:@"%@ \r %@", _thirdTextView.text, output];
                }
            } else if ([terminating isEqualToString:@"i <= 5"]) {
                for (int i = 0; i <= 5; i++) {
                    _thirdTextView.text = [NSString stringWithFormat:@"%@ \r %@", _thirdTextView.text, output];
                }
            } else if ([terminating isEqualToString:@"i > 0"]) {
                _thirdTextView.text = @"The current options would create an infinite loop!";
            }
        } else if ([initialization isEqualToString:@"int = 1"]) {
            if([terminating isEqualToString:@"i < 5"]) {
                
            } else if ([terminating isEqualToString:@"i <= 5"]) {
                
            } else if ([terminating isEqualToString:@"i > 0"]) {
                
            }
        } else if ([initialization isEqualToString:@"int = 5"]) {
            if([terminating isEqualToString:@"i < 5"]) {
                
            } else if ([terminating isEqualToString:@"i <= 5"]) {
                
            } else if ([terminating isEqualToString:@"i > 0"]) {
                
            }
        }
    } else if ([increment isEqualToString:@"i--"]) {
        if ([initialization isEqualToString:@"int i = 0"]) {
            if([terminating isEqualToString:@"i < 5"]) {
                
            } else if ([terminating isEqualToString:@"i <= 5"]) {
                
            } else if ([terminating isEqualToString:@"i > 0"]) {
                
            }
        } else if ([initialization isEqualToString:@"int = 1"]) {
            if([terminating isEqualToString:@"i < 5"]) {
                
            } else if ([terminating isEqualToString:@"i <= 5"]) {
                
            } else if ([terminating isEqualToString:@"i > 0"]) {
                
            }
        } else if ([initialization isEqualToString:@"int = 5"]) {
            if([terminating isEqualToString:@"i < 5"]) {
                
            } else if ([terminating isEqualToString:@"i <= 5"]) {
                
            } else if ([terminating isEqualToString:@"i > 0"]) {
                
            }
        }
    }
    
    [self.thirdTextView sizeToFit];
    
}


@end
