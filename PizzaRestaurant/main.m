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
#import "Manager1.h"
#import "Manager2.h"


int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        NSLog(@"Please pick your pizza size and toppings:");
        
        Kitchen *restaurantKitchen = [Kitchen new];
        Manager1 *manager1;
        Manager2 *manager2;
        
        while (TRUE) {
         
            NSLog(@" ");
            NSLog(@"To ask for pizza    : size|keyword [topping1 topping2 ... toppingN]");
            NSLog(@"Sizes available     : small|medium|large");
            NSLog(@"To change manager   : manager1|manager2|nomanager");
            NSLog(@"Quick pizza keywords: \n pepperoni (large pepperoni), \n canadian (large bacon pepperoni mushroom)");
            

            
            // prompt will show the current manager delegate (null when none selected)
            NSLog(@"[Manager: %@] > ",[restaurantKitchen.delegate className]);
            char str[100];
            fgets (str, 100, stdin);
            
            NSString *inputString = [[NSString alloc] initWithUTF8String:str];
            inputString = [inputString stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
            
            NSLog(@"Input was [%@]", inputString);
            
            if ([inputString isEqualToString:@"manager1"]){
                NSLog(@"Selecting manager1");
                if (manager1 == nil){
                    manager1 = [Manager1 new];
                }
                restaurantKitchen.delegate = manager1;
                continue;
            }
            
            if ([inputString isEqualToString:@"manager2"]){
                NSLog(@"Selecting manager2");
                if (manager2 == nil){
                    manager2 = [Manager2 new];
                }
                restaurantKitchen.delegate = manager2;
                continue;
            }
            
            if ([inputString isEqualToString:@"nomanager"]){
                NSLog(@"No manager selected");
                restaurantKitchen.delegate = nil;
                continue;
            }
            
            Pizza *pizza = [restaurantKitchen makePizzaFromCommand:inputString];
            if (pizza == nil){
                NSLog(@"Invalid request!");
            }else{
                NSLog(@"%@", [pizza info]);
            }

        }

    }
    return 0;
}

