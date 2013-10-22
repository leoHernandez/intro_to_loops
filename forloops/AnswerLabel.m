//
//  AnswerLabel.m
//  forloops
//
//  Created by Rajesh Ramsaroop on 10/20/13.
//  Copyright (c) 2013 leo Hernandez. All rights reserved.
//

#import "AnswerLabel.h"

@implementation AnswerLabel

// define constants
const NSString *TYPE_INITIALIZATION = @"initialization";
const NSString *TYPE_TERMINATING = @"terminating";
const NSString *TYPE_INCREMENT = @"increment";

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

-(id)initWithAnswer:(NSString *)answer ofType:(NSString *)type
{
    self = [super init];
    if (self) {
        self.text = answer;
        self.type = type;
    }
    return self;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end
