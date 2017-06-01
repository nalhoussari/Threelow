//
//  GameController.m
//  Threelow
//
//  Created by Noor Alhoussari on 2017-05-31.
//  Copyright © 2017 Noor Alhoussari. All rights reserved.
//

#import "GameController.h"

@implementation GameController

- (instancetype)init
{
    self = [super init];
    if (self) {
        _dices = [[NSMutableArray alloc]init];
        _diceHolder = [[NSMutableSet alloc]init];
    }
    return self;
}

-(void)addDice: (Dice*) obj{
    [_dices addObject:obj];
}

-(void)addAHold: (Dice*) obj{
    [_diceHolder addObject:obj];
}

-(int)sizeOfDices{
    return (int)[_dices count];
}

-(int)sizeOfDiceHolder{
    return (int)[_diceHolder count];
}
- (void) firstRolling{
    int index=0;
    for (int i=0; i<5; i++){
        Dice *newDice = [[Dice alloc]init];
        [_dices addObject:newDice];
        int newDiceValue = [newDice currentValue];
        NSLog(@"Dice %d: %d", index, newDiceValue);
        index++;
    }
}

-(void) holdDice: (int) number {
    
    if ([_diceHolder containsObject:_dices[number]]){
        [_diceHolder removeObject:_dices[number]];
    } else {
        [_diceHolder addObject:_dices[number]];
    }
}

-(void) roll{
    for (int i=0; i<[_dices count]; i++){
        if (![_diceHolder containsObject:_dices[i]]){
            [_dices[i] rollDice];
            NSLog(@"Dice %d: %d", i, [_dices[i] currentValue]);
        }
    }

}

-(void) printDices{
    int index =0;
    for (Dice *temDice in _dices){
        NSLog(@"Dice %d: %d", index, [temDice currentValue]);
        index++;
    }
}

-(void) score{
    int score = 0;
    for (Dice *temDice in _diceHolder){
        if (!([temDice currentValue] == 3)){
            score += [temDice currentValue];
        }
    }
    NSLog(@"Your total score is: %d", score);
}



@end
