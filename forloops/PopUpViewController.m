//
//  PopUpViewController.m
//  forloops
//
//  Created by Rajesh Ramsaroop on 10/25/13.
//  Copyright (c) 2013 leo Hernandez. All rights reserved.
//

#import "PopUpViewController.h"

@interface PopUpViewController ()

@end

@implementation PopUpViewController

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
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(id)initWithTitle:(NSString *)popupTitle withMessage:(NSString *)message withImageLocatedAt:(NSString *)imageLocation
{
    self = [super init];
    if (self) {
        self.popupTitle = popupTitle;
        self.message = message;
        self.imageLocation = imageLocation;
        self.modalPresentationStyle = UIModalPresentationFormSheet;
        self.modalTransitionStyle = UIModalTransitionStyleCoverVertical;
        
    }
    return self;
}

-(void)showInViewController:(UIViewController *)viewController
{
    
    self.viewController = viewController;
    
    // get the frame we are working in
    CGRect popupFrame = CGRectMake(0, 0, 540, 200);
    [viewController presentViewController:self animated:YES completion:nil];
    self.view.superview.frame = popupFrame;
    self.view.superview.center = self.view.center;
   
    // create and show title label
    CGRect titleFrame = CGRectMake(0, 0, popupFrame.size.width, 50);
    UILabel *titleLabel = [[UILabel alloc] initWithFrame:titleFrame];
    titleLabel.font = [UIFont fontWithName:@"Helvetica" size:30];
    titleLabel.textColor = [UIColor whiteColor];
    titleLabel.backgroundColor = [[UIColor alloc] initWithRed:(33/255.0) green:(129/255.0) blue:1 alpha:1];
    titleLabel.text = self.popupTitle;
    titleLabel.textAlignment = NSTextAlignmentCenter;
    [self.view addSubview:titleLabel];
    
    // create and show image
    CGRect imageFrame = CGRectMake(10, titleFrame.size.height+20, 80, 80);
    UIImageView *imageView = [[UIImageView alloc] initWithFrame:imageFrame];
    imageView.image = [UIImage imageNamed:self.imageLocation];
    [self.view addSubview:imageView];
    
    // display message
    CGRect messageFrame = CGRectMake(imageFrame.size.width+40, imageFrame.origin.y, popupFrame.size.width-imageFrame.size.width, 0);
    UILabel *messageLabel = [[UILabel alloc] initWithFrame:messageFrame];
    messageLabel.text = self.message;
    [messageLabel setNumberOfLines:0];
    [messageLabel sizeToFit];
    [self.view addSubview:messageLabel];
    
}

@end
