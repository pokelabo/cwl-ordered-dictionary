//
//  OrderedDictionaryTests.m
//  OrderedDictionaryTests
//
//  Created by kazuto_yamasaki on 2013/05/16.
//
//

#import "OrderedDictionaryTests.h"
#import "CWLOrderedDictionary.h"

@implementation OrderedDictionaryTests

- (void)setUp
{
    [super setUp];

    // Set-up code here.
    self.testDict = [[CWLOrderedDictionary alloc] init];

    [self.testDict setObject:@"Berlin" forKey:@"Germany"];
    [self.testDict setObject:@"Paris" forKey:@"France"];
    [self.testDict setObject:@"Rome" forKey:@"Italy"];
}

- (void)tearDown
{
    // Tear-down code here.

    [super tearDown];
}

- (void)testCount
{
    STAssertTrue([self.testDict count] == 3,
                 @"Count does not match");
}

- (void) testRetrieval
{
    STAssertEqualObjects([self.testDict objectForKey:@"Germany"], @"Berlin", @"values not matching");
    STAssertEqualObjects([self.testDict objectForKey:@"France"], @"Paris", @"values not matching");
    STAssertEqualObjects([self.testDict objectForKey:@"Italy"], @"Rome", @"values not matching");

}

- (void)testAdd
{
    [self.testDict setObject:@"London" forKey:@"United Kingdom"];

    STAssertTrue([self.testDict count] == 4,
                 @"Unit tests are not implemented yet in CWLOrderedDictionary");
    STAssertEqualObjects([self.testDict objectForKey:@"United Kingdom"], @"London", @"values not matching");
}

- (void)testDoubleAdd
{
    [self.testDict setObject:@"London" forKey:@"United Kingdom"];
    [self.testDict setObject:@"London" forKey:@"United Kingdom"];

    STAssertTrue([self.testDict count] == 4,
                 @"Unit tests are not implemented yet in CWLOrderedDictionary");
    STAssertEqualObjects([self.testDict objectForKey:@"United Kingdom"], @"London", @"values not matching");

}

- (void)testDoubleAdd2
{
    [self.testDict setObject:@"London" forKey:@"United Kingdom"];
    [self.testDict setObject:@"Manchester" forKey:@"United Kingdom"];

    STAssertTrue([self.testDict count] == 4,
                 @"Unit tests are not implemented yet in CWLOrderedDictionary");
    STAssertEqualObjects([self.testDict objectForKey:@"United Kingdom"], @"Manchester", @"values not matching");

}

- (void) testFastEnumeration
{
    NSInteger pass = 0;

    for (NSString *country in self.testDict)
    {
        if (pass == 0)
        {
            STAssertEqualObjects([self.testDict objectForKey:@"Germany"], @"Berlin", @"values not matching");
        }
        else if (pass == 1)
        {
            STAssertEqualObjects([self.testDict objectForKey:@"France"], @"Paris", @"values not matching");
        }
        else if (pass == 2)
        {
            STAssertEqualObjects([self.testDict objectForKey:@"Italy"], @"Rome", @"values not matching");
        }
        pass++;
    }
    STAssertTrue(pass == 3, @"number of passes not matching");
}

#if __has_feature(objc_subscripting)
- (void) testKeyedSubscriptAccess
{
    STAssertEqualObjects(self.testDict[@"Germany"], @"Berlin", @"values not matching");
    STAssertEqualObjects(self.testDict[@"France"], @"Paris", @"values not matching");
    STAssertEqualObjects(self.testDict[@"Italy"], @"Rome", @"values not matching");
}
#endif

#if __has_feature(objc_subscripting)
- (void) testIndexedSubscriptAccess
{
    STAssertEqualObjects(self.testDict[0], @"Berlin", @"values not matching");
    STAssertEqualObjects(self.testDict[1], @"Paris", @"values not matching");
    STAssertEqualObjects(self.testDict[2], @"Rome", @"values not matching");
}
#endif
@end
