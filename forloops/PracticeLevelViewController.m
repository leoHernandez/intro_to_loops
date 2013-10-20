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
    CGRect instructionsLabelFrame = CGRectMake(20, 65, self.view.frame.size.width-20, 0);
    _instructionsLabel = [[UILabel alloc] initWithFrame:instructionsLabelFrame];
    [_instructionsLabel setText:_currentLevel.levelInstructions];
    [_instructionsLabel setNumberOfLines:0];    // unlimited lines
    [_instructionsLabel sizeToFit]; // to make sure text is aligned at top left
    [self.view addSubview:_instructionsLabel];
    
    // create the loop structure
    UIFont *loopBodyFont = [UIFont fontWithName:@"Courier New" size:25];
    UIFont *answerLabelFont = [UIFont fontWithName:@"Courier New" size:20];
    
    CGRect structureForLineFrame = CGRectMake(20, 160, self.view.frame.size.width-20, 20);
    UILabel *structureForLine = [[UILabel alloc] initWithFrame:structureForLineFrame];
    structureForLine.font = loopBodyFont;
    structureForLine.text = @"for (          ;          ;          )";
    [structureForLine sizeToFit];
    [self.view addSubview:structureForLine];
    
    CGRect openingParenFrame = CGRectMake(20, 190, 10, 10);
    UILabel *openingParen = [[UILabel alloc] initWithFrame:openingParenFrame];
    openingParen.font = loopBodyFont;
    openingParen.text = @"{";
    [openingParen sizeToFit];
    [self.view addSubview:openingParen];
    
    // loop body
    CGRect loopBodyFrame = CGRectMake(80, 210, self.view.frame.size.width-100, 10);
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
    CGRect initContainerLabelFrame = CGRectMake(100, 163, answerLabelWidth, answerLabelHeight);
    _initializationContainerLabel = [[UILabel alloc] initWithFrame:initContainerLabelFrame];
    _initializationContainerLabel.font = answerLabelFont;
    [_initializationContainerLabel setTextAlignment:NSTextAlignmentCenter];
    _initializationContainerLabel.text = _currentLevel.loopInitialization;
    _initializationContainerLabel.backgroundColor = initializationColor;
    [self.view addSubview:_initializationContainerLabel];
    
    // test condition
    CGRect testConditionContainerFrame = CGRectMake(265, 163, answerLabelWidth, answerLabelHeight);
    _testConditionContainerLabel = [[UILabel alloc] initWithFrame:testConditionContainerFrame];
    _testConditionContainerLabel.font = answerLabelFont;
    [_testConditionContainerLabel setTextAlignment:NSTextAlignmentCenter];
    _testConditionContainerLabel.text = _currentLevel.terminatingCondition;
    _testConditionContainerLabel.backgroundColor = terminatingConditionColor;
    [self.view addSubview:_testConditionContainerLabel];
    
    // increment statement
    CGRect incrementContainerFrame = CGRectMake(430, 163, answerLabelWidth, answerLabelHeight);
    _incrementContainerLabel = [[UILabel alloc] initWithFrame:incrementContainerFrame];
    _incrementContainerLabel.font = answerLabelFont;
    [_incrementContainerLabel setTextAlignment:NSTextAlignmentCenter];
    _incrementContainerLabel.text = _currentLevel.increment;
    _incrementContainerLabel.backgroundColor = incrementColor;
    [self.view addSubview:_incrementContainerLabel];
    
    // create answer label
    for (NSString *text in _currentLevel.possibleAnswers)
    _answerLabelFrame = CGRectMake(20, 680, answerLabelWidth, answerLabelHeight);
    UILabel *answerLabel = [[UILabel alloc] initWithFrame:_answerLabelFrame];
    answerLabel.text = @"i < 10";
    answerLabel.userInteractionEnabled = YES;
    answerLabel.font = answerLabelFont;
    [answerLabel setTextAlignment:NSTextAlignmentCenter];
    answerLabel.backgroundColor = answerLabelColor;
    answerLabel.layer.borderColor = [UIColor blackColor].CGColor;
    answerLabel.layer.borderWidth = 1;
    [self.view addSubview:answerLabel];
    
    // add answer labels to NSMutableSet
    NSMutableSet *answerLabels = [[NSMutableSet alloc] init];
    [answerLabels addObject:answerLabel];
    
    // for loop to make pan gesture for all answer labels
    for (UILabel *label in answerLabels)
    {
        UIPanGestureRecognizer *panGesture = [[UIPanGestureRecognizer alloc] initWithTarget:self action:@selector(panDetected:)];
        [label addGestureRecognizer:panGesture];
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

-(void)panDetected:(UIPanGestureRecognizer *)sender
{
    UIView *label = sender.view;
    CGPoint amtOftranslation = [sender translationInView:self.view];
    CGPoint labelPosition = label.center;
    labelPosition.x = labelPosition.x + amtOftranslation.x;
    labelPosition.y = labelPosition.y + amtOftranslation.y;
    label.center = labelPosition;
    [sender setTranslation:CGPointZero inView:self.view];
    
    if (sender.state == UIGestureRecognizerStateEnded)
    {
        BOOL viewsClose = [self isThisView:label nearTo:self.testConditionContainerLabel withBuffer:50];
        if (viewsClose == YES)
        {
            label.center = self.testConditionContainerLabel.center;

        } else {
            [label setFrame:_answerLabelFrame];
        }
    }
    
    
}

-(void)startLevel:(int)level
{
    
    NSString *levelInstructions;
    NSString *loopBody;
    NSString *initialization;
    NSString *terminatingCondition;
    NSString *increment;
    
    NSMutableSet *possibleAnswers = [[NSMutableSet alloc] init];
    
    if (level == 1)
    {
        levelInstructions = @"Drag and drop the correct test condition from the answers section to make the loop run exactly 10 times.";
        
        loopBody = @"System.out.println(\"Hello World!\");";
        
        initialization = @"int i = 0";
        terminatingCondition = @"";
        increment = @"i++";
        
        NSString *possibleAnswer = @"i < 10";
        
        [possibleAnswers addObject:possibleAnswer];
        
    }
    
  
    // create level object
    _currentLevel = [[Level alloc] initWithLevel:level withInstructions:levelInstructions];
    _currentLevel.loopBody = loopBody;
    _currentLevel.loopInitialization = initialization;
    _currentLevel.terminatingCondition = terminatingCondition;
    _currentLevel.increment = increment;
    _currentLevel.possibleAnswers = possibleAnswers;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end