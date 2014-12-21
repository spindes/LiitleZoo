//
//  PredatorTest.m
//  LittleZoo
//
//  Created by Aleksandra Borovytskaya on 12/14/14.
//  Copyright (c) 2014 Aleksandra Borovytskaya. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import "Predator.h"
#import "D3Size.h"
#import "Rabbit.h"
#import "Vegetables.h"


@interface PredatorTest : XCTestCase
- (BOOL)isEqual:(id)other;

- (BOOL)isEqualToTest:(PredatorTest *)test;

- (NSUInteger)hash;

@end

@implementation PredatorTest
- (BOOL)isEqual:(id)other {
    if (other == self)
        return YES;
    if (!other || ![[other class] isEqual:[self class]])
        return NO;

    return [self isEqualToTest:other];
}

- (BOOL)isEqualToTest:(PredatorTest *)test {
    if (self == test)
        return YES;
    if (test == nil)
        return NO;
    return YES;
}

- (NSUInteger)hash {
    return [super hash];
}


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
    Predator *predator = [Predator animalWithSize:size weight:@(100)];

    Rabbit *food = [[Rabbit alloc] init];
    food.weight = @(3);
    food.size = [D3Size sizeWithHeight:@(30) width:@(20) length:@(50)];
    BOOL result = [predator feed:food];

    XCTAssert(result, @"Predator eats meat");

    Vegetables *carrot = [[Vegetables alloc] init];
    result = [predator feed:carrot];
    XCTAssert(!result, @"Predator doesn't eat vegetables");

}
-(void) testFeed_self {
    D3Size *size = [[D3Size alloc] initWithHeight:@(10) width:@(27) length:@(89)];
    Predator *predator = [Predator animalWithSize:size weight:@(100)];
    BOOL result = [predator feed:predator];
    XCTAssertFalse(result, @"Animal can't eat itself");

}
- (void) testFeed_otherBigAnimal {
    D3Size *size = [[D3Size alloc] initWithHeight:@(10) width:@(2) length:@(10)];
    Predator *predator = [Predator animalWithSize:size weight:@(100)];

    D3Size *size1 = [[D3Size alloc] initWithHeight:@(20) width:@(2) length:@(10)];
    Predator *predator1 = [Predator animalWithSize:size1 weight:@(200)];

    BOOL result = [predator feed: predator1];
    XCTAssertFalse(result, @"Animal can't eat something bigger twice than itself");

}
-(void) testIntegrity {
    D3Size *size = [[D3Size alloc] initWithHeight:@(10) width:@(27) length:@(89)];
    Predator *predator1 = [Predator animalWithSize:size weight:@(100)];
    size.height=@(155);

    Predator *predator2 = [Predator animalWithSize:size weight:@(100)];

    XCTAssertEqualObjects(predator1, predator2, @"Obejects are eaqual, but should not be");

    NSLog(@"predator1 %@", predator1);
    NSLog(@"predator2 %@", predator2);

}
@end
