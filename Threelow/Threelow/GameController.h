//
//  GameController.h
//  Threelow
//
//  Created by Noor Alhoussari on 2017-05-31.
//  Copyright © 2017 Noor Alhoussari. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Dice.h"

@interface GameController : NSObject

@property NSMutableArray* dices;
@property NSMutableSet* diceHolder;
//@property NSMutableDictionary* dices;
//@property NSMutableDictionary* diceHolder;


- (void)addDice: (Dice*) obj;

- (void)addAHold: (Dice*) obj;

- (int)sizeOfDiceHolder;

- (int)sizeOfDices;

- (void) firstRolling;

- (void) holdDice: (int) number;

- (void) roll;

- (void) printDices;

- (void) score;

@end
