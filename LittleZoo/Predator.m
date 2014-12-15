//
// Created by Aleksandra Borovytskaya on 12/14/14.
// Copyright (c) 2014 Aleksandra Borovytskaya. All rights reserved.
//

#import "Predator.h"
#import "D3Size.h"
#import "Food.h"


@implementation Predator {



}
@synthesize size = _size;
@synthesize weight = _weight;

- (instancetype)initWithSize:(D3Size *)size weight:(NSNumber *)weight {
    self = [super init];
    if (self) {
        _size = size;
        _weight = weight;
    }

    return self;
}

+ (instancetype)predatorWithSize:(D3Size *)size weight:(NSNumber *)weight {
    return [[self alloc] initWithSize:size weight:weight];
}


- (BOOL)feed:(id <Food>)food {
    {
        return (food.type == FoodType_Meat);
    }

//    if
//        (self.weight < Food.weight)
//
//    result = NO;
//    other
//            result = YES;
//
//    return resul;
}

- (BOOL)play:(id)toy {
    return NO;
}

@end