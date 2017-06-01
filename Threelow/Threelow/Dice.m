//
//  Dice.m
//  Threelow
//
//  Created by Noor Alhoussari on 2017-05-31.
//  Copyright © 2017 Noor Alhoussari. All rights reserved.
//

#import "Dice.h"

@implementation Dice

- (instancetype)init
{
    self = [super init];
    if (self) {
        _currentValue = arc4random_uniform(6) + 1;
    }
    return self;
}

- (void)rollDice{
    self.currentValue = arc4random_uniform(6) + 1;
}



@end
