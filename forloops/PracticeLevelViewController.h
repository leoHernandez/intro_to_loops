//
//  PracticeLevelViewController.h
//  forloops
//
//  Created by Rajesh Ramsaroop on 10/13/13.
//  Copyright (c) 2013 leo Hernandez. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Level.h"

@interface PracticeLevelViewController : UIViewController

@property int level;
@property (strong, nonatomic) NSString *levelInstructions;

@property (strong, nonatomic) UILabel *instructionsLabel;

@property (strong, nonatomic) UILabel *initializationContainerLabel;
@property (strong, nonatomic) UILabel *testConditionContainerLabel;
@property (strong, nonatomic) UILabel *incrementContainerLabel;

@property CGRect answerLabelFrame;

@property (strong, nonatomic) Level *currentLevel;

-(BOOL)isThisView:(UIView *)firstView nearTo:(UIView *)secondView withBuffer:(CGFloat) buffer;

-(void)startLevel:(int) level;

@end