//
// Created by Aleksandra Borovytskaya on 12/14/14.
// Copyright (c) 2014 Aleksandra Borovytskaya. All rights reserved.
//

#import "Predator.h"
#import "D3Size.h"
#import "Food.h"


@implementation Predator {


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

- (BOOL)isEqual:(id)other {
    if (other == self)
        return YES;
    if (!other || ![[other class] isEqual:[self class]])
        return NO;

    return [self isEqualToPredator:other];
}

- (BOOL)isEqualToPredator:(Predator *)predator {
    if (self == predator)
        return YES;
    if (predator == nil)
        return NO;
    return YES;
}

- (NSUInteger)hash {
    return [super hash];
}

- (id)copyWithZone:(NSZone *)zone {
    return [[[self class] allocWithZone:zone] init];
}

@end