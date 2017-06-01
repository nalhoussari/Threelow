//
//  main.m
//  Threelow
//
//  Created by Noor Alhoussari on 2017-05-31.
//  Copyright © 2017 Noor Alhoussari. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Dice.h"
#import "InputHandler.h"
#import "GameController.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        InputHandler *userInput = [[InputHandler alloc] init];
        
        GameController *controller = [[GameController alloc]init];
                
        NSLog(@"(play) to play. (quit) to exit");
        NSString *playString = [userInput inputTrimString];
        
        if ([playString isEqualToString:@"play"]){
            [controller firstRolling];
        }
        while ([playString isEqualToString:@"play"]){
            
            NSLog(@"Press 'index number' of Dice to hold or 'quit' to exit or 'roll' to roll again");
            NSString *playStringHoldContinue = [userInput inputTrimString];

            if ([playStringHoldContinue intValue]){
                int diceIndex = [playStringHoldContinue intValue];
                
                [controller holdDice: diceIndex];
                
            } else if ([playStringHoldContinue isEqualToString:@"roll"]){
                    [controller roll];
            } else if ([playStringHoldContinue isEqualToString:@"quit"]){
                [controller score];
                break;
            }

        }
        
        
    }
    return 0;
}
