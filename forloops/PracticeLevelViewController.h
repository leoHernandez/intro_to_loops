//
//  PracticeLevelViewController.h
//  forloops
//
//  Created by Rajesh Ramsaroop on 10/13/13.
//  Copyright (c) 2013 leo Hernandez. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PracticeLevelViewController : UIViewController

@property int level;
@property (strong, nonatomic) NSString *levelInstructions;

@property (strong, nonatomic) UILabel *instructionsLabel;

@property (strong, nonatomic) UILabel *testConditionContainerLabel;
@property (strong, nonatomic) UILabel *incrementContainerLabel;

@property CGRect answerLabelFrame;

-(BOOL)isThisView:(UIView *)firstView nearTo:(UIView *)secondView withBuffer:(CGFloat) buffer;

@end