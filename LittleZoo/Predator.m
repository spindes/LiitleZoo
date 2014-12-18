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
    float volumeRatio = [food.size volume].floatValue/[self.size volume].floatValue ;
    BOOL result = NO;
    if ([super feed:food]) {
        result = (food.type == FoodType_Meat && volumeRatio < 2);
    }

    return result;
//    }

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