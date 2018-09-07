//
//  Pizza.h
//  PizzaRestaurant
//
//  Created by Francisco on 2018-09-04.
//  Copyright © 2018 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef enum {
    SMALL = 1,
    MEDIUM = 2,
    LARGE = 3
} PizzaSize;


@interface Pizza : NSObject

@property PizzaSize size;

@property NSArray<NSString *> *toppings;

- (instancetype)init : (PizzaSize) size : (NSArray *) toppings;

- (instancetype)largePepperoni;

- (instancetype)margherita;

- (instancetype)canadian;

+ (PizzaSize) stringToSize:(NSString *)size;

+ (NSString *) sizeToString:(int)size;

- (NSString *) info;

@end
