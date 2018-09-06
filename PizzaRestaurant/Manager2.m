//
//  Manager2.m
//  PizzaRestaurant
//
//  Created by Francisco on 2018-09-04.
//  Copyright © 2018 Lighthouse Labs. All rights reserved.
//

#import "Manager2.h"
#import "Kitchen.h"

@implementation Manager2

- (BOOL)kitchen:(Kitchen *)kitchen shouldMakePizzaOfSize:(PizzaSize)size andToppings:(NSArray *)toppings{
    return TRUE;
}

- (BOOL)kitchenShouldUpgradeOrder:(Kitchen *)kitchen{
    return TRUE;
}

- (void)kitchenDidMakePizza:(Pizza *)pizza{
    NSLog(@"Your pizza is ready. Thanks.");
}

@end
