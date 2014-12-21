//
// Created by Aleksandra Borovytskaya on 12/15/14.
// Copyright (c) 2014 Aleksandra Borovytskaya. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Animal.h"
#import "Food.h"

@interface BaseAnimal : NSObject <Animal, Food>

+ (instancetype)animalWithSize:(D3Size *)size weight:(NSNumber *)weight;

- (instancetype)initWithSize:(D3Size *)size weight:(NSNumber *)weight;

@end