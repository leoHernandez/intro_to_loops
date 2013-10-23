//
//  PracticeLevelViewController.h
//  forloops
//
//  Created by Rajesh Ramsaroop on 10/13/13.
//  Copyright (c) 2013 leo Hernandez. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Level.h"

@interface PracticeLevelViewController : UIViewController<UIAlertViewDelegate>

- (IBAction)checkAnswer:(UIBarButtonItem *)sender;

@property (strong, nonatomic) UILabel *instructionsLabel;
@property (strong, nonatomic) UILabel *loopBodyLabel;

@property (strong, nonatomic) UILabel *initializationContainerLabel;
@property (strong, nonatomic) UILabel *terminatingConditionContainerLabel;
@property (strong, nonatomic) UILabel *incrementContainerLabel;

@property (strong, nonatomic) NSString *initializationAnswer;
@property (strong, nonatomic) NSString *terminatingConditionAnswer;
@property (strong, nonatomic) NSString *incrementAnswer;

@property CGRect tempFrame;
@property CGRect originalInitializationFrame;
@property CGRect originalTerminatingFrame;
@property CGRect originalIncrementFrame;
@property CGFloat answerLabelWidth;
@property CGFloat answerLabelHeight;

@property (strong, nonatomic) Level *currentLevel;

-(BOOL)isThisView:(UIView *)firstView nearTo:(UIView *)secondView withBuffer:(CGFloat) buffer;

-(void)startLevel:(int) level;

@end