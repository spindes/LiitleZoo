//
// Created by Aleksandra Borovytskaya on 12/14/14.
// Copyright (c) 2014 Aleksandra Borovytskaya. All rights reserved.
//

#import "Grazing.h"
#import "D3Size.h"


@implementation Grazing {


}
@synthesize size = _size;
@synthesize weight = _weight;

- (BOOL)feed:(id <Food>)food {
    float weightratio = food.weight.floatValue /self.weight.floatValue;
    if (weightratio >0.5)
        return NO;

    if (food.type ==FoodType_Other) {
        float weightRatioLimit;
        if (self.weight.floatValue < 100 || [self.size volume].floatValue < 100)
            weightRatioLimit = 0.2;
        else
            weightRatioLimit = 0.05;

        if (weightratio < weightRatioLimit)
            return YES;
        else
            return NO;
    }

    if (food.type != FoodType_Meat)
    return YES;
    else
        return NO;


}

- (BOOL)play:(id)toy {
    return NO;
}



@end