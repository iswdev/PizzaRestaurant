//
//  Pizza.m
//  PizzaRestaurant
//
//  Created by Francisco on 2018-09-04.
//  Copyright © 2018 Lighthouse Labs. All rights reserved.
//

#import "Pizza.h"

@implementation Pizza

- (instancetype)init : (PizzaSize) size : (NSArray *) toppings{
    self.size = size;
    self.toppings = toppings;
    return self;
}

- (instancetype)largePepperoni{
    return [[Pizza alloc] init:LARGE : [NSArray arrayWithObjects:@"pepperoni", nil] ];
}

- (instancetype)margherita{
    return [[Pizza alloc] init:LARGE : [NSArray arrayWithObjects:@"oregano", nil] ];
}

- (instancetype)canadian{
    return [[Pizza alloc] init:LARGE : [NSArray arrayWithObjects:@"bacon", @"pepperoni", @"mushrooms", nil] ];
}

- (NSString *) info{
    NSString *toppings = [self.toppings componentsJoinedByString:@", "];
    return [NSString stringWithFormat:@"Pizza size %d [%@]" , self.size, toppings];
}

@end
