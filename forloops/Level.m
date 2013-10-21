//
//  Level.m
//  forloops
//
//  Created by Rajesh Ramsaroop on 10/20/13.
//  Copyright (c) 2013 leo Hernandez. All rights reserved.
//

#import "Level.h"

@implementation Level

-(id) initWithLevel: (int)level withInstructions: (NSString *)instructions
{
    self = [super init];
    if (self) {
        _levelNumber = level;
        _levelInstructions = instructions;
    }
    
    return self;
}

@end
