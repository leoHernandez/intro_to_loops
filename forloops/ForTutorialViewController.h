//
//  ForTutorialViewController.h
//  forloops
//
//  Created by leo Hernandez on 9/25/13.
//  Copyright (c) 2013 leo Hernandez. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ForTutorialViewController : UIViewController<UIActionSheetDelegate>



@property (nonatomic,retain) IBOutlet UIButton *button;



@property (strong, nonatomic) IBOutlet UITextView *myLabel;
    @property CGRect tempFrame;
    @property CGRect originalInitializationFrame;
    @property CGRect originalTerminatingFrame;
    @property CGRect originalIncrementFrame;

@property (strong, nonatomic) IBOutlet UIImageView *variableimage;
@property (strong, nonatomic) IBOutlet UIImageView *Controlimage;
@property (strong, nonatomic) IBOutlet UIImageView *iterationImage;
@property (strong, nonatomic) IBOutlet UIImageView *statementimg;
@property (strong, nonatomic) IBOutlet UILabel *titleLabel;

@property (strong, nonatomic) IBOutlet UITextView *firstTextView;
@property (strong, nonatomic) IBOutlet UITextView *secondTextView;
@property (strong, nonatomic) IBOutlet UITextView *thirdTextView;
@property (strong, nonatomic) IBOutlet UITextView *fourthTextView;

@property (strong, nonatomic) IBOutlet UILabel *label1;
@property (strong, nonatomic) IBOutlet UILabel *label2;
@property (strong, nonatomic) IBOutlet UILabel *label3;
@property (strong, nonatomic) IBOutlet UILabel *label4;

@property (strong, nonatomic) IBOutlet UILabel *placeholder1;

@property (strong, nonatomic) IBOutlet UILabel *placeholder2;

@property (strong, nonatomic) IBOutlet UILabel *placeholder3;

@property (strong, nonatomic) IBOutlet UILabel *placeholder4;
@property (strong, nonatomic) IBOutlet UIButton *myButton;

@property(strong, nonatomic) UILabel *exampleLoopBody;
@property(strong, nonatomic) UIButton *exampleInitialization;
@property(strong, nonatomic) UIButton *exampleTerminating;
@property(strong, nonatomic) UIButton *exampleIncrement;

@property(strong, nonatomic) NSArray *exampleInitializationArray;
@property(strong, nonatomic) NSArray *exampleTerminatingArray;
@property(strong, nonatomic) NSArray *exampleIncrementArray;

@property(strong, nonatomic) NSString *exampleButtonPressed;

@property(strong, nonatomic) UILabel *exampleOutput;
@property(strong, nonatomic) UILabel *exampleInstructions;

- (IBAction)myButton:(UIButton *)sender;

@property (strong, nonatomic) IBOutlet UITextField *userInput;



- (IBAction)WLoopButton:(UIButton *)sender;
- (IBAction)LookButton:(UIButton *)sender;

- (IBAction)TermButton:(UIButton *)sender;
- (IBAction)ExampleButton:(UIButton *)sender;



@end
