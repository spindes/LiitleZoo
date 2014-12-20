//
// Created by Aleksandra Borovytskaya on 12/14/14.
// Copyright (c) 2014 Aleksandra Borovytskaya. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Food.h"

@class D3Size;


@interface FoodOther : NSObject<Food>


+ (instancetype)FoodOtherWithSize:(D3Size *)size weight:(NSNumber *)weight;
@end