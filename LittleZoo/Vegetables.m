//
// Created by Aleksandra Borovytskaya on 12/14/14.
// Copyright (c) 2014 Aleksandra Borovytskaya. All rights reserved.
//

#import "Vegetables.h"
#import "D3Size.h"


@implementation Vegetables {

@private
    D3Size *_size;
    NSNumber *_weight;
}

@synthesize size = _size;
@synthesize weight = _weight;

- (FoodType)type {
    return FoodType_Grass;
}

- (instancetype)initWithSize:(D3Size *)size weight:(NSNumber *)weight {
    self = [super init];
    if (self) {
        _size = size;
        _weight = weight;
    }

    return self;
}

+ (instancetype)vegetablesWithSize:(D3Size *)size weight:(NSNumber *)weight {
    return [[self alloc] initWithSize:size weight:weight];
}


@end