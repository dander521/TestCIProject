//
//  TestCIProjectTests.m
//  TestCIProjectTests
//
//  Created by 程荣刚 on 16/5/18.
//  Copyright © 2016年 rongkecloud. All rights reserved.
//

#import <XCTest/XCTest.h>

#define assertTrue(expr)              XCTAssertTrue((expr), @"")
#define assertFalse(expr)             XCTAssertFalse((expr), @"")
#define assertNil(a1)                 XCTAssertNil((a1), @"")
#define assertNotNil(a1)              XCTAssertNotNil((a1), @"")
#define assertEqual(a1, a2)           XCTAssertEqual((a1), (a2), @"")
#define assertEqualObjects(a1, a2)    XCTAssertEqualObjects((a1), (a2), @"")
#define assertNotEqual(a1, a2)        XCTAssertNotEqual((a1), (a2), @"")
#define assertNotEqualObjects(a1, a2) XCTAssertNotEqualObjects((a1), (a2), @"")
#define assertAccuracy(a1, a2, acc)   XCTAssertEqualWithAccuracy((a1),(a2),(acc))

#define WAIT                                                                \
do {                                                                        \
[self expectationForNotification:@"LCUnitTest" object:nil handler:nil]; \
[self waitForExpectationsWithTimeout:60 handler:nil];                   \
} while(0);

#define NOTIFY                                                                            \
do {                                                                                      \
[[NSNotificationCenter defaultCenter] postNotificationName:@"LCUnitTest" object:nil]; \
} while(0);

@interface TestCIProjectTests : XCTestCase

@end

@implementation TestCIProjectTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testExample {
    // This is an example of a functional test case.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
}

- (void)testNumber {
    XCTAssertNil(nil);
}

- (void)testNumber1 {
    XCTAssertTrue(1 == 1);
}

- (void)testNumber2 {
    XCTAssertFalse(1 == 2);
}

- (void)testNumber3 {
    assertEqual(3, 3);
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end
