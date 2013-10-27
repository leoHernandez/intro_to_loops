//
//  PopUpViewController.h
//  forloops
//
//  Created by Rajesh Ramsaroop on 10/25/13.
//  Copyright (c) 2013 leo Hernandez. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PopUpViewController : UIViewController

// pop up title
@property NSString *popupTitle;

// message
@property NSString *message;

// location of image
@property NSString *imageLocation;

// the view controller that called this pop up
@property UIViewController *viewController;

-(id)initWithTitle:(NSString *)popupTitle withMessage:(NSString *)message withImageLocatedAt:(NSString *)imageLocation;

-(void)showInViewController:(UIViewController *)viewController;

@end
