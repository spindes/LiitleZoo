//
// Created by Aleksandra Borovytskaya on 12/14/14.
// Copyright (c) 2014 Aleksandra Borovytskaya. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Animal.h"

@class D3Size;


@interface Predator : NSObject<Animal>
- (instancetype)initWithSize:(D3Size *)size weight:(NSNumber *)weight;

+ (instancetype)predatorWithSize:(D3Size *)size weight:(NSNumber *)weight;

@end