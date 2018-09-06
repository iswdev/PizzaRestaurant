//
//  DeliveryService.h
//  PizzaRestaurant
//
//  Created by Francisco on 2018-09-05.
//  Copyright © 2018 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Pizza.h"
#import "DeliveryCar.h"

@interface DeliveryService : NSObject

@property NSMutableArray<NSString *> *deliveries;

@property DeliveryCar *deliveryCar;

- (instancetype) init;

- (void) deliverPizza:(Pizza *)pizza;

- (NSMutableArray<NSString *> *) listDeliveries;

@end
