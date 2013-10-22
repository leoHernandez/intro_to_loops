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
    
    self.navigationItem.title = [NSString stringWithFormat:@"Level %i",_currentLevel.levelNumber];
 
    // create and display instructions label
    CGRect instructionsLabelFrame = CGRectMake(20, 115, self.view.frame.size.width-20, 0);
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
    UILabel *loopBody = [[UILabel alloc] initWithFrame:loopBodyFrame];
    loopBody.font = loopBodyFont;
    loopBody.text = _currentLevel.loopBody;
    [loopBody setNumberOfLines:0];
    [loopBody sizeToFit];
    [self.view addSubview:loopBody];
    
    CGFloat closingParensY = loopBody.frame.origin.y + loopBody.frame.size.height;
    CGRect closingParensFrame = CGRectMake(20, closingParensY, 10, 10);
    UILabel *closingParens = [[UILabel alloc] initWithFrame:closingParensFrame];
    closingParens.font = loopBodyFont;
    closingParens.text = @"}";
    [closingParens sizeToFit];
    [self.view addSubview:closingParens];
    
    // label for loop components
    CGFloat answerLabelWidth = 140;
    CGFloat answerLabelHeight = 25;
    UIColor *answerLabelColor = [[UIColor alloc] initWithRed:.5 green:.5 blue:.5 alpha:.2];
    UIColor *initializationColor = [UIColor yellowColor];
    UIColor *terminatingConditionColor = [UIColor cyanColor];
    UIColor *incrementColor = [UIColor orangeColor];
    
    // init variable
    CGRect initContainerLabelFrame = CGRectMake(100, structureForLineFrame.origin.y, answerLabelWidth, answerLabelHeight);
    _initializationContainerLabel = [[UILabel alloc] initWithFrame:initContainerLabelFrame];
    _initializationContainerLabel.font = answerLabelFont;
    [_initializationContainerLabel setTextAlignment:NSTextAlignmentCenter];
    _initializationContainerLabel.text = _currentLevel.loopInitialization;
    _initializationContainerLabel.backgroundColor = initializationColor;
    [self.view addSubview:_initializationContainerLabel];
    
    // test condition
    CGRect testConditionContainerFrame = CGRectMake(265, structureForLineFrame.origin.y, answerLabelWidth, answerLabelHeight);
    _terminatingConditionContainerLabel = [[UILabel alloc] initWithFrame:testConditionContainerFrame];
    _terminatingConditionContainerLabel.font = answerLabelFont;
    [_terminatingConditionContainerLabel setTextAlignment:NSTextAlignmentCenter];
    _terminatingConditionContainerLabel.text = _currentLevel.terminatingCondition;
    _terminatingConditionContainerLabel.backgroundColor = terminatingConditionColor;
    [self.view addSubview:_terminatingConditionContainerLabel];
    
    // increment statement
    CGRect incrementContainerFrame = CGRectMake(430, structureForLineFrame.origin.y, answerLabelWidth, answerLabelHeight);
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
        CGRect frame = CGRectMake(labelX, labelY, answerLabelWidth, answerLabelHeight);
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
        [answer addGestureRecognizer:panGesture];
        
        // update next label positions
        labelX = labelX + answerLabelWidth + 20;
        if (labelX + answerLabelWidth + 20 > self.view.frame.size.width-20) {
            labelX = 20;
            labelY = labelY + answerLabelHeight + 20;
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
    
    if ( isOnInitialization == NO
        && isOnTerminatingCondition == NO
        && isOnIncrement == NO)
    {
        _tempFrame = theView.frame;
    }
    
}

-(void)panDetected:(UIPanGestureRecognizer *)sender
{

    AnswerLabel *answer = sender.view;
    CGPoint amtOftranslation = [sender translationInView:self.view];
    CGPoint labelPosition = answer.center;
    labelPosition.x = labelPosition.x + amtOftranslation.x;
    labelPosition.y = labelPosition.y + amtOftranslation.y;
    answer.center = labelPosition;
    [sender setTranslation:CGPointZero inView:self.view];
    
    // while moving, set answer placeholder to ""
    if ([answer.type isEqualToString:@"initialization"]) {
        _initializationAnswer = @"";
    } else if ([answer.type isEqualToString:@"terminating"]) {
        _terminatingConditionAnswer = @"";
    } else if ([answer.type isEqualToString:@"increment"]) {
        _incrementAnswer = @"";
    }
    
    if (sender.state == UIGestureRecognizerStateEnded)
    {
        CGFloat buffer = 50;
        BOOL isCloseToInitialization = [self isThisView:answer nearTo:_initializationContainerLabel withBuffer:buffer];
        BOOL isCloseToTerminatingCondition = [self isThisView:answer nearTo:_terminatingConditionContainerLabel withBuffer:buffer];
        BOOL isCloseToIncrement = [self isThisView:answer nearTo:_incrementContainerLabel withBuffer:buffer];
        
        if ([answer.type isEqualToString: @"initialization"] && isCloseToInitialization == YES)
        {
            answer.center = _incrementContainerLabel.center;
            _initializationAnswer = answer.text;
        }
        else if ([answer.type isEqualToString:@"terminating"] && isCloseToTerminatingCondition == YES)
        {
            answer.center = _terminatingConditionContainerLabel.center;
            _terminatingConditionAnswer = answer.text;
        }
        else if ([answer.type isEqualToString:@"increment"] && isCloseToIncrement == YES)
        {
            answer.center = _incrementContainerLabel.center;
            _incrementAnswer = answer.text;
        }
        else
        {
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
    
    NSString *levelInstructions;
    NSString *loopBody;
    NSString *initialization;
    NSString *terminatingCondition;
    NSString *increment;
    
    NSMutableSet *possibleAnswers = [[NSMutableSet alloc] init];
    
    NSMutableSet *correctAnswerCombinations = [[NSMutableSet alloc] init];
    
    if (level == 1)
    {
        int max = 10;
        int min = 3;
        int random = ( (arc4random() % (max-min+1)) + min );
        levelInstructions = [NSString stringWithFormat:@"Drag and drop the correct test condition from the answers section to make the loop run exactly %i times.",random];
        
        loopBody = @"System.out.println(\"Hello World!\");";
        
        initialization = @"int i = 0";
        terminatingCondition = @"";
        increment = @"i++";
        
        NSString *possibleAnswer;
        possibleAnswer = [NSString stringWithFormat:@"i < %i",random];
        [possibleAnswers addObject:[[AnswerLabel alloc] initWithAnswer:possibleAnswer ofType:@"terminating"]];
        possibleAnswer = [NSString stringWithFormat:@"i <= %i",random];
        [possibleAnswers addObject:[[AnswerLabel alloc] initWithAnswer:possibleAnswer ofType:@"terminating"]];
        
        NSString *correctInitialization;
        NSString *correctTerminating;
        NSString *correctIncrement;
        
        correctInitialization = @"";
        correctTerminating = [NSString stringWithFormat:@"i < %i", random];
        correctIncrement = @"";
        NSArray *correctCombo = [NSArray arrayWithObjects:correctInitialization,correctTerminating,correctIncrement, nil];
        [correctAnswerCombinations addObject:correctCombo];
        
    }
    
  
    // create level object
    _currentLevel = [[Level alloc] initWithLevel:level withInstructions:levelInstructions];
    _currentLevel.loopBody = loopBody;
    _currentLevel.loopInitialization = initialization;
    _currentLevel.terminatingCondition = terminatingCondition;
    _currentLevel.increment = increment;
    _currentLevel.possibleAnswers = possibleAnswers;
    _currentLevel.correctAnswerCombinations = correctAnswerCombinations;
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
        
        if ([_incrementAnswer isEqualToString:initialization]
            && [_terminatingConditionAnswer isEqualToString:terminating]
            && [_incrementAnswer isEqualToString:increment])
        {
            answerCorrect = YES;
        }
    }
    
    if (answerCorrect == YES) {
        NSLog(@"Answer correct!");
    } else {
        NSLog(@"WRONG!!!!!!!");
    }
}
@end