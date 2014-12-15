//
//  Animal.h
//  LittleZoo
//
//  Created by Aleksandra Borovytskaya on 12/14/14.
//  Copyright (c) 2014 Aleksandra Borovytskaya. All rights reserved.
//

#import <Foundation/Foundation.h>

@class D3Size;
@protocol Food;

@protocol Animal <NSObject>

-(BOOL) feed:(id<Food>)food;
-(BOOL) play:(id)toy;

@property (nonatomic, strong) D3Size* size;
@property (nonatomic, strong) NSNumber* weight;

@optional
-(BOOL) sleep;


@end
