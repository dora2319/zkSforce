// Copyright (c) 2013,2016 Simon Fell
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

#import "ZKParserTests.h"
#import "zkParser.h"

@implementation ZKParserTests

-(zkElement *)parse:(NSString *)doc {
    return [zkParser parseData:[doc dataUsingEncoding:NSUTF8StringEncoding]];
}

-(void)assert:(zkElement *)e hasName:(NSString *)n text:(NSString *)t {
    XCTAssertEqualObjects([e name], n);
    XCTAssertEqualObjects([e stringValue], t);
}

-(void)assert:(zkElement *)e hasName:(NSString *)n ns:(NSString *)ns text:(NSString *)t {
    [self assert:e hasName:n text:t];
    XCTAssertEqualObjects([e namespace], ns);
}

-(void)testSimple {
    NSString *doc = @"<root>some text</root>";
    zkElement *e = [self parse:doc];
    [self assert:e hasName:@"root" text:@"some text"];
}

-(void)testChildElement {
    NSString *doc = @"<root><child>some text</child><child2>more text</child2></root>";
    zkElement *e = [self parse:doc];
    XCTAssertEqualObjects(@"root", [e name]);
    zkElement *c1 = [e childElement:@"child"];
    zkElement *c2 = [e childElement:@"child2"];
    [self assert:c1 hasName:@"child" text:@"some text"];
    [self assert:c2 hasName:@"child2" text:@"more text"];
    XCTAssertNil([e childElement:@"dontExist"]);
}

-(void)testChildElements {
    NSString *doc = @"<root><c>one</c><c>two</c></root>";
    zkElement *e = [self parse:doc];
    NSArray *c = [e childElements:@"c"];
    XCTAssertEqual((NSUInteger)2, [c count]);
    [self assert:c[0] hasName:@"c" text:@"one"];
    [self assert:c[1] hasName:@"c" text:@"two"];
}

-(void)testAttributeValue {
    NSString *doc = @"<root a='bob'/>";
    zkElement *e = [self parse:doc];
    XCTAssertEqualObjects(@"bob", [e attributeValue:@"a" ns:nil]);
}

-(void)testAttributeValueNs {
    NSString *doc = @"<root xmlns='urn:a' xmlns:x='urn:b' bob='a' x:bob='b' />";
    zkElement *e = [self parse:doc];
    XCTAssertEqualObjects(@"a", [e attributeValue:@"bob" ns:nil]);
    XCTAssertEqualObjects(@"b", [e attributeValue:@"bob" ns:@"urn:b"]);
}

-(void)testChildElementsNs {
    NSString *doc = @"<root xmlns='urn:a' xmlns:b='urn:bb'><c>one</c><b:c>two</b:c><b:c>three</b:c></root>";
    zkElement *e = [self parse:doc];
    NSArray *bc = [e childElements:@"c" ns:@"urn:bb"];
    XCTAssertEqual((NSUInteger)2, [bc count]);
    [self assert:bc[0] hasName:@"c" ns:@"urn:bb" text:@"two"];
    [self assert:bc[1] hasName:@"c" ns:@"urn:bb" text:@"three"];

    NSArray *ac = [e childElements:@"c" ns:@"urn:a"];
    XCTAssertEqual((NSUInteger)1, [ac count]);
    [self assert:ac[0] hasName:@"c" ns:@"urn:a" text:@"one"];
    
    NSArray *c = [e childElements:@"c"];
    XCTAssertEqual((NSUInteger)3, [c count]);
    [self assert:c[0] hasName:@"c" ns:@"urn:a" text:@"one"];
    [self assert:c[1] hasName:@"c" ns:@"urn:bb" text:@"two"];
    [self assert:c[2] hasName:@"c" ns:@"urn:bb" text:@"three"];
}

-(void)testXsiTypeWithNs {
    NSString *doc = @"<root xmlns:xsi='http://www.w3.org/2001/XMLSchema-instance' xmlns:xsd='http://www.w3.org/2001/XMLSchema' xsi:type='xsd:date'>2016-05-31</root>";
    zkElement *e = [self parse:doc];
    ZKNamespacedName *t = e.xsiType;
    XCTAssertEqualObjects(@"date", t.localname);
    XCTAssertEqualObjects(@"http://www.w3.org/2001/XMLSchema", t.namespaceURI);
    XCTAssertEqualObjects(@"http://www.w3.org/2001/XMLSchema:date", [t description]);
}

-(void)testXsiTypeWithDefaultNs {
    NSString *doc = @"<root xmlns:xsi='http://www.w3.org/2001/XMLSchema-instance' xmlns='http://www.w3.org/2001/XMLSchema' xsi:type='date'>2016-05-31</root>";
    zkElement *e = [self parse:doc];
    ZKNamespacedName *t = e.xsiType;
    XCTAssertEqualObjects(@"date", t.localname);
    XCTAssertEqualObjects(@"http://www.w3.org/2001/XMLSchema", t.namespaceURI);
    XCTAssertEqualObjects(@"http://www.w3.org/2001/XMLSchema:date", [t description]);
}

-(void)testXsiTypeNotExists {
    NSString *doc = @"<root>2016-05-31</root>";
    zkElement *e = [self parse:doc];
    XCTAssertNil([e xsiType]);
}

-(void)testIsXsiNil {
    NSString *doc = @"<root xmlns:xsi='http://www.w3.org/2001/XMLSchema-instance' xsi:nil='true' />";
    zkElement *e = [self parse:doc];
    XCTAssertEqual(TRUE, [e isXsiNil]);
}

-(void)testIsNotXsiNil {
    NSString *doc = @"<root />";
    zkElement *e = [self parse:doc];
    XCTAssertEqual(false, [e isXsiNil]);

    doc = @"<root xmlns:xsi='http://www.w3.org/2001/XMLSchema-instance' xsi:nil='false' />";
    e = [self parse:doc];
    XCTAssertEqual(false, [e isXsiNil]);

    // note that the NS URI is not the schema-instance URI, so this should be false
    doc = @"<root xmlns:xsi='http://www.w3.org/2001/XMLSchema' xsi:nil='true' />";
    e = [self parse:doc];
    XCTAssertEqual(false, [e isXsiNil]);
}

@end
