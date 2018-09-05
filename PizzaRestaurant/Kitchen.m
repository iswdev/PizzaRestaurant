//
//  Kitchen.m
//  PizzaRestaurant
//
//  Created by Steven Masuch on 2014-07-19.
//  Copyright (c) 2014 Lighthouse Labs. All rights reserved.
//

#import "Kitchen.h"

@implementation Kitchen

PizzaSize mapSize(NSString *size){
    if ([size isEqualToString:@"small"]){
        return SMALL;
    }
    if ([size isEqualToString:@"medium"]){
        return MEDIUM;
    }
    if ([size isEqualToString:@"large"]){
        return LARGE;
    }
    return 0;
}


- (Pizza *)makePizzaWithSize:(PizzaSize)size toppings:(NSArray *)toppings
{
    return [[Pizza alloc] init:size :toppings];
}


- (Pizza *)makePizzaFromCommand:(NSString *)command{
    
    // Take the first word of the command as the size, and the rest as the toppings
    NSArray *commandWords = [command componentsSeparatedByString:@" "];
    
    // parse input with size and toppings
    int parts = (int)[commandWords count];
    PizzaSize size = mapSize(commandWords[0]);
    NSArray *toppings = [commandWords subarrayWithRange:NSMakeRange(1, parts - 1)];
    
    if (size == 0){
        if ([command isEqualToString:@"pepperoni"]){
            return [[Pizza alloc] largePepperoni];
        }
        if ([command isEqualToString:@"margherita"]){
            return [[Pizza alloc] margherita];
        }
        if ([command isEqualToString:@"canadian"]){
            return [[Pizza alloc] canadian];
        }
    }
    
    // Init a pizza
    return [self makePizzaWithSize:size toppings:toppings];
}

@end
