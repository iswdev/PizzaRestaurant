//
//  Manager1.m
//  PizzaRestaurant
//
//  Created by Francisco on 2018-09-04.
//  Copyright © 2018 Lighthouse Labs. All rights reserved.
//

#import "Manager1.h"
#import "Kitchen.h"

@implementation Manager1

- (BOOL)kitchen:(Kitchen *)kitchen shouldMakePizzaOfSize:(PizzaSize)size andToppings:(NSArray *)toppings{
    if ([toppings containsObject:@"anchovies"]){
        return FALSE;
    }
    return TRUE;
}

- (BOOL)kitchenShouldUpgradeOrder:(Kitchen *)kitchen{
    return FALSE;
}

@end
