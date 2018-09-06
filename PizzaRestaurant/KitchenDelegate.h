//
//  KitchenDelegate.h
//  PizzaRestaurant
//
//  Created by Francisco on 2018-09-04.
//  Copyright © 2018 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Kitchen.h"
#import "Pizza.h"
#import "DeliveryService.h"


@protocol KitchenDelegate <NSObject>

- (BOOL)kitchen:(Kitchen *)kitchen shouldMakePizzaOfSize:(PizzaSize)size andToppings:(NSArray *)toppings;

- (BOOL)kitchenShouldUpgradeOrder:(Kitchen *)kitchen;

@optional
- (void)kitchenDidMakePizza:(Pizza *)pizza;


@end
