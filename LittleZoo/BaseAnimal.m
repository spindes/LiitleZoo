//
// Created by Aleksandra Borovytskaya on 12/15/14.
// Copyright (c) 2014 Aleksandra Borovytskaya. All rights reserved.
//

#import "Food.h"
#import "BaseAnimal.h"
#import "D3Size.h"


@implementation BaseAnimal {

@private
    D3Size *_size;
    NSNumber *_weight;
}
@synthesize size = _size;
@synthesize weight = _weight;

- (FoodType)type {
    return FoodType_Meat;
}

- (BOOL)feed:(id <Food>)food {
    if (food != self)
            return YES;
    else
    return NO;
}

- (BOOL)play:(id)toy {
    return NO;

}



@end