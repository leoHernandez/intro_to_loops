//
//  AnswerLabel.h
//  forloops
//
//  Created by Rajesh Ramsaroop on 10/20/13.
//  Copyright (c) 2013 leo Hernandez. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AnswerLabel : UILabel

extern const NSString *TYPE_INITIALIZATION;
extern const NSString *TYPE_TERMINATING;
extern const NSString *TYPE_INCREMENT;

// initialization, terminating, increment
@property (strong, nonatomic) NSString *type;

-(id)initWithAnswer:(NSString *)answer ofType:(NSString *)type;

@end
