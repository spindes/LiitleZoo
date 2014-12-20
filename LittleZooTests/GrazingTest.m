//
//  GrazingTest.m
//  LittleZoo
//
//  Created by Aleksandra Borovytskaya on 12/18/14.
//  Copyright (c) 2014 Aleksandra Borovytskaya. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import "D3Size.h"
#import "Grazing.h"
#import "Rabbit.h"
#import "Vegetables.h"
#import "FoodOther.h"

@interface GrazingTest : XCTestCase

@end

@implementation GrazingTest

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testFeed {

    D3Size *size = [[D3Size alloc] initWithHeight:@(10) width:@(27) length:@(89)];
    Grazing *cow = [[Grazing alloc] init];
    cow.size = size;

    Rabbit *food = [[Rabbit alloc] init];
    food.weight = @(3);
    food.size = [D3Size sizeWithHeight:@(30) width:@(20) length:@(50)];
    BOOL result = [cow feed:food];

    XCTAssert(!result, @"Grazing doesn't eat meat");

    Vegetables *carrot = [[Vegetables alloc] init];
    result = [cow feed:carrot];
    XCTAssert(result, @"Grazing eats vegetables");

}
- (void) testFeed_grassTooBig {
    D3Size *size = [[D3Size alloc] initWithHeight:@(10) width:@(2) length:@(10)];
    Grazing *cow = [[Grazing alloc] init];
            cow.size = size;
    cow.weight = @(100);

    Vegetables *carrot = [[Vegetables alloc] init];
    carrot.weight = @(50);


    BOOL result = [cow feed: carrot];
    XCTAssertFalse(!result, @"Grazing can't eat something that weights more than half from itself");

}

- (void) testFeed_somethingOtherTooBig {

    D3Size *size = [[D3Size alloc] initWithHeight:@(2) width:@(2) length:@(10)];
    Grazing *Zebra = [[Grazing alloc] init];
    Zebra.size = size;
    Zebra.weight = @(100);

    D3Size *size2 = [[D3Size alloc] initWithHeight:@(4) width:@(2) length:@(10)];
    FoodOther *Rope = [FoodOther FoodOtherWithSize:size2 weight:@(10)];


    BOOL result = [Zebra feed: Rope];
    XCTAssertFalse(!result, @"test failed");

}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end
