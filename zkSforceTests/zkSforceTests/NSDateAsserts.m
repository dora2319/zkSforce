// Copyright (c) 2016 Simon Fell
//
// Permission is hereby granted, free of charge, to any person obtaining a
// copy of this software and associated documentation files (the "Software"),
// to deal in the Software without restriction, including without limitation
// the rights to use, copy, modify, merge, publish, distribute, sublicense,
// and/or sell copies of the Software, and to permit persons to whom the
// Software is furnished to do so, subject to the following conditions:
//
// The above copyright notice and this permission notice shall be included
// in all copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS
// OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
// THE SOFTWARE.
//


#import "NSDateAsserts.h"

@implementation NSDateAsserts

-(void)setUp {
    [super setUp];
    cal = [[NSCalendar alloc] initWithCalendarIdentifier:(NSString *)kCFGregorianCalendar];
    cal.timeZone = [NSTimeZone timeZoneWithAbbreviation:@"UTC"];
}

-(void)assertDate:(NSDate *)date equalsYear:(NSInteger)yr month:(NSInteger)month day:(NSInteger)day {
    NSDateComponents *dc = [cal components:-1 fromDate:date];
    XCTAssertEqual(yr, [dc year]);
    XCTAssertEqual(month, [dc month]);
    XCTAssertEqual(day, [dc day]);
}

-(void)assertTime:(NSDate *)date equalsHour:(NSInteger)hours minute:(NSInteger)mins seconds:(NSInteger)secs {
    NSDateComponents *dc = [cal components:-1 fromDate:date];
    XCTAssertEqual(hours, [dc hour]);
    XCTAssertEqual(mins, [dc minute]);
    XCTAssertEqual(secs, [dc second]);
}

-(void)assertDateTime:(NSDate *)date equalsYears:(NSInteger)yr month:(NSInteger)month day:(NSInteger)day hour:(NSInteger)hour mins:(NSInteger)mins seconds:(NSInteger)seconds {
    [self assertDate:date equalsYear:yr month:month day:day];
    [self assertTime:date equalsHour:hour minute:mins seconds:seconds];
}

@end
