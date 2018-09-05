//
//  main.m
//  PizzaRestaurant
//
//  Created by Steven Masuch on 2014-07-19.
//  Copyright (c) 2014 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Kitchen.h"
#import "Pizza.h"


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


int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        NSLog(@"Please pick your pizza size and toppings:");
        
        Kitchen *restaurantKitchen = [Kitchen new];
        
        while (TRUE) {
            // Loop forever
            
            NSLog(@"> ");
            char str[100];
            fgets (str, 100, stdin);
            
            NSString *inputString = [[NSString alloc] initWithUTF8String:str];
            inputString = [inputString stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
            
            NSLog(@"Input was %@", inputString);
            
            // Take the first word of the command as the size, and the rest as the toppings
            NSArray *commandWords = [inputString componentsSeparatedByString:@" "];
            
            // parse input with size and toppings
            int parts = (int)[commandWords count];
            PizzaSize size = mapSize(commandWords[0]);
            NSArray *toppings = [commandWords subarrayWithRange:NSMakeRange(1, parts - 1)];
            
            // Init a pizza
            Pizza *pizza = [[Pizza alloc] init:size :toppings];
            NSLog(@"%@", [pizza info]);
            
            
            
            
            
            // And then send some message to the kitchen...
        }

    }
    return 0;
}

