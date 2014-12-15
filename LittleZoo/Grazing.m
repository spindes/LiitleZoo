//
// Created by Aleksandra Borovytskaya on 12/14/14.
// Copyright (c) 2014 Aleksandra Borovytskaya. All rights reserved.
//

#import "Grazing.h"


@implementation Grazing {


}
@synthesize size = _size;
@synthesize weight = _weight;

- (BOOL)feed:(id <Food>)food {
    return NO;
}

- (BOOL)play:(id)toy {
    return NO;
}


@end