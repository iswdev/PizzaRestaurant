//
//  Pizza.h
//  PizzaRestaurant
//
//  Created by Francisco on 2018-09-04.
//  Copyright © 2018 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef enum {
    SMALL,
    MEDIUM,
    LARGE
} PizzaSize;


@interface Pizza : NSObject

@property PizzaSize size;

@property NSArray<NSString *> *toppings;

- (instancetype)init : (PizzaSize) size : (NSArray *) toppings;

- (NSString *) info;

@end
