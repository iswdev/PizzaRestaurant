//
//  Manager2.h
//  PizzaRestaurant
//
//  Created by Francisco on 2018-09-04.
//  Copyright © 2018 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "KitchenDelegate.h"

@interface Manager2 : NSObject <KitchenDelegate>

@property DeliveryService *deliveryService;

@end
