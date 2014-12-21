//
// Created by Aleksandra Borovytskaya on 12/14/14.
// Copyright (c) 2014 Aleksandra Borovytskaya. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Animal.h"
#import "BaseAnimal.h"

@class D3Size;
@protocol Food;

@interface Predator : BaseAnimal <Food, NSCopying>


- (id)copyWithZone:(NSZone *)zone;

- (BOOL)isEqual:(id)other;

- (BOOL)isEqualToPredator:(Predator *)predator;

- (NSUInteger)hash;


@end