//
//  DeliveryService.m
//  PizzaRestaurant
//
//  Created by Francisco on 2018-09-05.
//  Copyright © 2018 Lighthouse Labs. All rights reserved.
//

#import "DeliveryService.h"

@implementation DeliveryService

- (instancetype) init{
    self.deliveries = [NSMutableArray new];
    return self;
}

- (void) deliverPizza:(Pizza *)pizza{
    [self.deliveries addObject:[pizza info]];
    NSLog(@"Pizza delivered [%@]",[pizza info]);
    if (self.deliveryCar != nil){
        [self.deliveryCar deliverPizza:pizza];
    }
}

- (NSArray<NSString *> *) listDeliveries{
    return self.deliveries;
}

@end
