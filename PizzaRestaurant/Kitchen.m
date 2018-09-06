//
//  Kitchen.m
//  PizzaRestaurant
//
//  Created by Steven Masuch on 2014-07-19.
//  Copyright (c) 2014 Lighthouse Labs. All rights reserved.
//

#import "Kitchen.h"
#import "KitchenDelegate.h"

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
    
    Pizza *created = nil;
    
    if (size == 0){
        //checking special pizza
        if ([command isEqualToString:@"pepperoni"]){
            created = [[Pizza alloc] largePepperoni];
        }
        if ([command isEqualToString:@"margherita"]){
            created = [[Pizza alloc] margherita];
        }
        if ([command isEqualToString:@"canadian"]){
            created = [[Pizza alloc] canadian];
        }
    }else{
        //standard pizza with toppings
        created = [self makePizzaWithSize:size toppings:toppings];
    }
    
    
    // checking delegates
    if (created != nil && [self.delegate conformsToProtocol:@protocol(KitchenDelegate)]) {
        NSLog(@"Using a delegate manager...");
        
        // delegate can create a pizza
        BOOL canCreate = [self.delegate kitchen:self shouldMakePizzaOfSize:created.size andToppings:created.toppings];
        if (!canCreate){
            NSLog(@"Delegate cannot create your pizza");
            return nil;
        }
        
        // delegate can upgrade a pizza
        BOOL canUpgrade = [self.delegate kitchenShouldUpgradeOrder:self];
        if (canUpgrade && created.size != LARGE){
            NSLog(@"Delegate upgraded your pizza to LARGE");
            created.size = LARGE;
        }
        
        // delegate can receive a call to kitchenDidMakePizza
        SEL optSelector = NSSelectorFromString(@"kitchenDidMakePizza:");
        // SEL optSelector = @selector(kitchenDidMakePizza:);
        if (canCreate && ([self.delegate respondsToSelector:optSelector]) ){
            [self.delegate kitchenDidMakePizza:created];
        }
    }
    
    return created;
}

@end
