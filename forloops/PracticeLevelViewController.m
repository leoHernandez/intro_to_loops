//
//  PracticeLevelViewController.m
//  forloops
//
//  Created by Rajesh Ramsaroop on 10/13/13.
//  Copyright (c) 2013 leo Hernandez. All rights reserved.
//

#import "PracticeLevelViewController.h"
#import "QuartzCore/QuartzCore.h"   // required to change label borders
#import "Level.h"
#import "AnswerLabel.h"
#import "PopUpViewController.h"

@interface PracticeLevelViewController ()

@end

@implementation PracticeLevelViewController

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
	// Do any additional setup after loading the view.
 
    [self startLevel:1];
    
}

-(void)setUpLevel
{
    self.navigationItem.title = [NSString stringWithFormat:@"Level %i",_currentLevel.levelNumber];
    
    // create and display instructions label
    CGRect instructionsLabelFrame = CGRectMake(20, 120, self.view.frame.size.width-20, 0);
    _instructionsLabel = [[UILabel alloc] initWithFrame:instructionsLabelFrame];
    [_instructionsLabel setText:_currentLevel.levelInstructions];
    [_instructionsLabel setNumberOfLines:0];    // unlimited lines
    [_instructionsLabel sizeToFit]; // to make sure text is aligned at top left
    [self.view addSubview:_instructionsLabel];
    
    // create the loop structure
    UIFont *loopBodyFont = [UIFont fontWithName:@"Courier New" size:25];
    UIFont *answerLabelFont = [UIFont fontWithName:@"Courier New" size:20];
    
    CGRect structureForLineFrame = CGRectMake(20, 200, self.view.frame.size.width-20, 20);
    UILabel *structureForLine = [[UILabel alloc] initWithFrame:structureForLineFrame];
    structureForLine.font = loopBodyFont;
    structureForLine.text = @"for (          ;          ;          )";
    [structureForLine sizeToFit];
    [self.view addSubview:structureForLine];
    
    CGRect openingParenFrame = CGRectMake(20, structureForLineFrame.origin.y+30, 10, 10);
    UILabel *openingParen = [[UILabel alloc] initWithFrame:openingParenFrame];
    openingParen.font = loopBodyFont;
    openingParen.text = @"{";
    [openingParen sizeToFit];
    [self.view addSubview:openingParen];
    
    // loop body
    CGRect loopBodyFrame = CGRectMake(80, openingParenFrame.origin.y+20, self.view.frame.size.width-100, 10);
    _loopBodyLabel = [[UILabel alloc] initWithFrame:loopBodyFrame];
    _loopBodyLabel.font = loopBodyFont;
    _loopBodyLabel.text = _currentLevel.loopBody;
    [_loopBodyLabel setNumberOfLines:0];
    [_loopBodyLabel sizeToFit];
    [self.view addSubview:_loopBodyLabel];
    
    CGFloat closingParensY = _loopBodyLabel.frame.origin.y + _loopBodyLabel.frame.size.height;
    CGRect closingParensFrame = CGRectMake(20, closingParensY, 10, 10);
    UILabel *closingParens = [[UILabel alloc] initWithFrame:closingParensFrame];
    closingParens.font = loopBodyFont;
    closingParens.text = @"}";
    [closingParens sizeToFit];
    [self.view addSubview:closingParens];
    
    // label for loop components
    _answerLabelWidth = 140;
    _answerLabelHeight = 25;
    UIColor *answerLabelColor = [[UIColor alloc] initWithRed:.5 green:.5 blue:.5 alpha:.2];
    UIColor *initializationColor = [UIColor yellowColor];
    UIColor *terminatingConditionColor = [UIColor cyanColor];
    UIColor *incrementColor = [UIColor orangeColor];
    
    // init variable
    CGRect initContainerLabelFrame = CGRectMake(100, structureForLineFrame.origin.y, _answerLabelWidth, _answerLabelHeight);
    _initializationContainerLabel = [[UILabel alloc] initWithFrame:initContainerLabelFrame];
    _initializationContainerLabel.font = answerLabelFont;
    [_initializationContainerLabel setTextAlignment:NSTextAlignmentCenter];
    _initializationContainerLabel.text = _currentLevel.loopInitialization;
    _initializationContainerLabel.backgroundColor = initializationColor;
    [self.view addSubview:_initializationContainerLabel];
    
    // test condition
    CGRect testConditionContainerFrame = CGRectMake(265, structureForLineFrame.origin.y, _answerLabelWidth, _answerLabelHeight);
    _terminatingConditionContainerLabel = [[UILabel alloc] initWithFrame:testConditionContainerFrame];
    _terminatingConditionContainerLabel.font = answerLabelFont;
    [_terminatingConditionContainerLabel setTextAlignment:NSTextAlignmentCenter];
    _terminatingConditionContainerLabel.text = _currentLevel.terminatingCondition;
    _terminatingConditionContainerLabel.backgroundColor = terminatingConditionColor;
    [self.view addSubview:_terminatingConditionContainerLabel];
    
    // increment statement
    CGRect incrementContainerFrame = CGRectMake(430, structureForLineFrame.origin.y, _answerLabelWidth, _answerLabelHeight);
    _incrementContainerLabel = [[UILabel alloc] initWithFrame:incrementContainerFrame];
    _incrementContainerLabel.font = answerLabelFont;
    [_incrementContainerLabel setTextAlignment:NSTextAlignmentCenter];
    _incrementContainerLabel.text = _currentLevel.increment;
    _incrementContainerLabel.backgroundColor = incrementColor;
    [self.view addSubview:_incrementContainerLabel];
    
    // create answer labels
    CGFloat labelX = 20;
    CGFloat labelY = 740;
    for (AnswerLabel *answer in _currentLevel.possibleAnswers)
    {
        CGRect frame = CGRectMake(labelX, labelY, _answerLabelWidth, _answerLabelHeight);
        [answer setFrame:frame];
        answer.userInteractionEnabled = YES;
        answer.font = answerLabelFont;
        [answer setTextAlignment:NSTextAlignmentCenter];
        answer.backgroundColor = answerLabelColor;
        answer.layer.borderColor = [UIColor blackColor].CGColor;
        answer.layer.borderWidth = 1;
        [self.view addSubview:answer];
        
        // make pan gesture recognizer
        UIPanGestureRecognizer *panGesture = [[UIPanGestureRecognizer alloc] initWithTarget:self action:@selector(panDetected:)];
        panGesture.maximumNumberOfTouches = 1;
        [answer addGestureRecognizer:panGesture];
        
        // update next label positions
        labelX = labelX + _answerLabelWidth + 20;
        if (labelX + _answerLabelWidth + 20 > self.view.frame.size.width-20) {
            labelX = 20;
            labelY = labelY + _answerLabelHeight + 20;
        }
    }
}

-(BOOL)isThisView:(UIView *)firstView nearTo:(UIView *)secondView withBuffer:(CGFloat)buffer
{
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
    
    BOOL isOnInitialization = [self isThisView:theView nearTo:_initializationContainerLabel withBuffer:0];
    BOOL isOnTerminatingCondition = [self isThisView:theView nearTo:_terminatingConditionContainerLabel withBuffer:0];
    BOOL isOnIncrement = [self isThisView:theView nearTo:_incrementContainerLabel withBuffer:0];
    
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

-(void)panDetected:(UIPanGestureRecognizer *)sender
{
    AnswerLabel *answer = (AnswerLabel *) sender.view;
    CGPoint amtOftranslation = [sender translationInView:self.view];
    CGPoint labelPosition = answer.center;
    labelPosition.x = labelPosition.x + amtOftranslation.x;
    labelPosition.y = labelPosition.y + amtOftranslation.y;
    answer.center = labelPosition;
    [sender setTranslation:CGPointZero inView:self.view];
    
  
    if (sender.state == UIGestureRecognizerStateEnded)
    {
        CGFloat buffer = 50;
        BOOL isCloseToInitialization = [self isThisView:answer nearTo:_initializationContainerLabel withBuffer:buffer];
        BOOL isCloseToTerminatingCondition = [self isThisView:answer nearTo:_terminatingConditionContainerLabel withBuffer:buffer];
        BOOL isCloseToIncrement = [self isThisView:answer nearTo:_incrementContainerLabel withBuffer:buffer];
        
        if ([answer.type isEqualToString: @"initialization"] && isCloseToInitialization == YES && ([_initializationAnswer isEqualToString:@""] || [answer.text isEqualToString:_initializationAnswer]) )
        {
            _originalInitializationFrame = _tempFrame;
            [answer setFrame:_initializationContainerLabel.frame];
            _initializationAnswer = answer.text;
        }
        else if ([answer.type isEqualToString:@"terminating"] && isCloseToTerminatingCondition == YES && ([_terminatingConditionAnswer isEqualToString:@""] || [answer.text isEqualToString:_terminatingConditionAnswer]) )
        {
            _originalTerminatingFrame = _tempFrame;
            [answer setFrame:_terminatingConditionContainerLabel.frame];
            _terminatingConditionAnswer = answer.text;
        }
        else if ([answer.type isEqualToString:@"increment"] && isCloseToIncrement == YES && ([_incrementAnswer isEqualToString:@""] || [answer.text isEqualToString:_incrementAnswer]) )
        {
            _originalIncrementFrame = _tempFrame;
            [answer setFrame:_incrementContainerLabel.frame];
            _incrementAnswer = answer.text;
        }
        else
        {
            if ([answer.type isEqualToString:@"initialization"] && [answer.text isEqualToString:_initializationAnswer]) {
                _initializationAnswer = @"";
            } else if ([answer.type isEqualToString:@"terminating"] && [answer.text isEqualToString:_terminatingConditionAnswer]) {
                _terminatingConditionAnswer = @"";
            } else if ([answer.type isEqualToString:@"increment"] && [answer.text isEqualToString:_incrementAnswer]) {
                _incrementAnswer = @"";
            }
            [answer setFrame:_tempFrame];
        }
    }
    
}

-(void)startLevel:(int)level
{
    
    // starting level, reset answers
    _initializationAnswer = @"";
    _terminatingConditionAnswer = @"";
    _incrementAnswer = @"";
    
    // reset guess count
    _incorrectGuesses = 0;
    
    // reset answer labels
    for (AnswerLabel *label in _currentLevel.possibleAnswers)
    {
        [label removeFromSuperview];
    }
    
    // reset instructions text
    [_instructionsLabel removeFromSuperview];
    
    // reset loop body
    [_loopBodyLabel removeFromSuperview];
    
    NSString *levelInstructions;
    NSString *loopBody;
    NSString *initialization;
    NSString *terminatingCondition;
    NSString *increment;
    
    NSMutableSet *possibleAnswers = [[NSMutableSet alloc] init];
    
    NSMutableSet *correctAnswerCombinations = [[NSMutableSet alloc] init];
    
    NSMutableArray *levelHints = [[NSMutableArray alloc] init];
    
    // make sure level is positive
    level = (level < 0) ? level*-1 : level;
    
    if (level == 1) {
        int random = [self getRandomNumberFrom:3 to:10];
        levelInstructions = [NSString stringWithFormat:@"Drag and drop the correct terminating condition from the answers section to make the loop run exactly %i times.",random];
        
        loopBody = @"System.out.println(\"Hello World!\");";
        
        initialization = @"int i = 0";
        terminatingCondition = @"";
        increment = @"i++";
        
        NSString *possibleAnswer;
        possibleAnswer = [NSString stringWithFormat:@"i < %i",random];
        [possibleAnswers addObject:[[AnswerLabel alloc] initWithAnswer:possibleAnswer ofType:@"terminating"]];
        possibleAnswer = [NSString stringWithFormat:@"i <= %i",random];
        [possibleAnswers addObject:[[AnswerLabel alloc] initWithAnswer:possibleAnswer ofType:@"terminating"]];
        possibleAnswer = [NSString stringWithFormat:@"i < %i", random +1];
        [possibleAnswers addObject:[[AnswerLabel alloc ] initWithAnswer:possibleAnswer ofType:@"terminating"]];
        possibleAnswer = [NSString stringWithFormat:@"i <= %i", random +1];
        [possibleAnswers addObject:[[AnswerLabel alloc ] initWithAnswer:possibleAnswer ofType:@"terminating"]];
        
        NSString *correctInitialization;
        NSString *correctTerminating;
        NSString *correctIncrement;
        
        correctInitialization = @"";
        correctTerminating = [NSString stringWithFormat:@"i < %i", random];
        correctIncrement = @"";
        NSArray *correctCombo = [NSArray arrayWithObjects:correctInitialization,correctTerminating,correctIncrement, nil];
        [correctAnswerCombinations addObject:correctCombo];
        
        // hints
        [levelHints addObject:@"Remember the loop starts counting at 0."];
        [levelHints addObject:@"The loop needs to run an exact amount of times, no more."];
        
    } else if (level == 2) {
        int random = [self getRandomNumberFrom:3 to:10];
        levelInstructions = [NSString stringWithFormat:@"Drag and drop the correct initialization variable to make the loop run exactly %i times",random];
        
        loopBody = @"System.out.println(\"Loops are cool!\");";
        
        initialization = @"";
        terminatingCondition = [NSString stringWithFormat:@"i < %i",random];
        increment = @"i++";
        
        NSString *possibleAnswer;
        possibleAnswer = @"i = 0";
        [possibleAnswers addObject:[[AnswerLabel alloc] initWithAnswer:possibleAnswer ofType:@"initialization"]];
        possibleAnswer = @"i = 1";
        [possibleAnswers addObject:[[AnswerLabel alloc] initWithAnswer:possibleAnswer ofType:@"initialization"]];
        
        NSString *correctInitialization;
        NSString *correctTerminating;
        NSString *correctIncrement;
        
        correctInitialization = @"i = 0";
        correctTerminating = @"";
        correctIncrement = @"";
        NSArray *correctCombo = [NSArray arrayWithObjects:correctInitialization,correctTerminating,correctIncrement, nil];
        [correctAnswerCombinations addObject:correctCombo];
        
        // hints
        [levelHints addObject:@"Know the difference between < and <="];
        [levelHints addObject:@"Try to write the output down on a piece of paper and keep track of the varbiale i"];
        
    } else if (level == 3) {
        int random = [self getRandomNumberFrom:3 to:10];
        levelInstructions = [NSString stringWithFormat:@"Drag and drop the correct loop increment/decrement variable to make the loop run exactly %i times", random];
        
        loopBody = @"System.out.println(\"I never knew loops could be incredible!\");";
        
        initialization = [NSString stringWithFormat:@"int i = %i", random];
        terminatingCondition = @"i > 0";
        increment = @"";
        
        NSString *possibleAnswer;
        possibleAnswer = @"i++";
        [possibleAnswers addObject:[[AnswerLabel alloc] initWithAnswer:possibleAnswer ofType:@"increment"]];
        possibleAnswer = @"i + 1";
        [possibleAnswers addObject:[[AnswerLabel alloc] initWithAnswer:possibleAnswer ofType:@"increment"]];
        possibleAnswer = @"i--";
        [possibleAnswers addObject:[[AnswerLabel alloc] initWithAnswer:possibleAnswer ofType:@"increment"]];
        possibleAnswer = [NSString stringWithFormat:@"i = i - %i",random];
        [possibleAnswers addObject:[[AnswerLabel alloc] initWithAnswer:possibleAnswer ofType:@"increment"]];
        
    } else {
        [self startLevel:1];
    }
    
  
    // create level object
    _currentLevel = [[Level alloc] initWithLevel:level withInstructions:levelInstructions];
    _currentLevel.loopBody = loopBody;
    _currentLevel.loopInitialization = initialization;
    _currentLevel.terminatingCondition = terminatingCondition;
    _currentLevel.increment = increment;
    _currentLevel.possibleAnswers = possibleAnswers;
    _currentLevel.correctAnswerCombinations = correctAnswerCombinations;
    _currentLevel.levelHints = levelHints;
    
    [self setUpLevel];
}

-(int)getRandomNumberFrom:(int)min to:(int)max
{
    return ( (arc4random() % (max-min+1)) + min );
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)checkAnswer:(UIBarButtonItem *)sender {
    BOOL answerCorrect = NO;
    
    for (NSArray *combo in _currentLevel.correctAnswerCombinations)
    {
        NSString *initialization = combo[0];
        NSString *terminating = combo[1];
        NSString *increment = combo[2];
        
        if ([_initializationAnswer isEqualToString:initialization]
            && [_terminatingConditionAnswer isEqualToString:terminating]
            && [_incrementAnswer isEqualToString:increment])
        {
            answerCorrect = YES;
        }
    }
    
    if (answerCorrect == YES) {
        
        NSString *popupTitle = [NSString stringWithFormat:@"Level %i Complete",_currentLevel.levelNumber];
        NSString *popupMessage = @"That is the correct answer, well done! :-)";
        //NSString *popupImageLocation = @"feedback_correct.png";
        
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:popupTitle message:popupMessage delegate:self cancelButtonTitle:@"OK" otherButtonTitles:@"Next Level", nil];
        [alert show];
        /*
         Need to fix this
        PopUpViewController *popup = [[PopUpViewController alloc] initWithTitle:popupTitle withMessage:popupMessage withImageLocatedAt:popupImageLocation];
        [popup showInViewController:self];
         */
       
        
    } else {
        _incorrectGuesses++;
        NSString *message = @"Sorry, that answer is not correct. :(";
        if (_incorrectGuesses >= 2) {
            NSUInteger randomIndex = arc4random() % [_currentLevel.levelHints count];
            NSString *hint = _currentLevel.levelHints[randomIndex];
            message = [NSString stringWithFormat:@"%@ \rHint: %@",message,hint];
        }
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Wrong Answer" message:message delegate:nil cancelButtonTitle:@"OK" otherButtonTitles: nil];
        [alert show];
    }
}

-(void)alertView:(UIAlertView *)alertView didDismissWithButtonIndex:(NSInteger)buttonIndex
{
    // next level button
    if (buttonIndex == 1) {
        [self startLevel:_currentLevel.levelNumber + 1];
    }
}
@end