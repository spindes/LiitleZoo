//
// Created by Aleksandra Borovytskaya on 12/15/14.
// Copyright (c) 2014 Aleksandra Borovytskaya. All rights reserved.
//

#import <Foundation/Foundation.h>

@class D3Size;

@protocol Measurable <NSObject>

@property (nonatomic, strong) D3Size* size;
@property (nonatomic, strong) NSNumber* weight;


@end