// Copyright (c) 2013 Simon Fell
//
// Permission is hereby granted, free of charge, to any person obtaining a
// copy of this software and associated documentation files (the "Software"),
// to deal in the Software without restriction, including without limitation
// the rights to use, copy, modify, merge, publish, distribute, sublicense,
// and/or sell copies of the Software, and to permit persons to whom the
// Software is furnished to do so, subject to the following conditions
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
// 
// Note: This file was generated by WSDL2ZKSforce.
//		  see https://github.com/superfell/WSDL2ZKSforce
//       DO NOT HAND EDIT.
//

#import "ZKPerformQuickActionRequest.h"
#import "ZKEnvelope.h"
#import "ZKSObject.h"

@interface ZKPerformQuickActionRequest()
@property (strong,nonatomic) NSString  *contextId__v;
@property (strong,nonatomic) NSString  *quickActionName__v;
@property (strong,nonatomic) NSArray   *records__v;
@end

@implementation ZKPerformQuickActionRequest


+(void)load {
    [self registerType:self xmlName:@"PerformQuickActionRequest"];
}

+(ZKComplexTypeInfo *)wsdlSchema {
   static ZKComplexTypeInfo *wsdlSchema;
   static dispatch_once_t onceToken;
   dispatch_once(&onceToken, ^{
       wsdlSchema = [[ZKComplexTypeInfo alloc] initWithType:@"PerformQuickActionRequest" parent:nil
                    fields:@[
                        [[ZKComplexTypeFieldInfo alloc] initWithElementName:@"contextId" propertyName:@"contextId" optional:NO nillable:YES],
                        [[ZKComplexTypeFieldInfo alloc] initWithElementName:@"quickActionName" propertyName:@"quickActionName" optional:NO nillable:NO],
                        [[ZKComplexTypeFieldInfo alloc] initWithElementName:@"records" propertyName:@"records" optional:YES nillable:YES],

                    ]];
   });
   return wsdlSchema;
}
    

-(NSString *)contextId {
    if ((fields__set[0] & 0x1) == 0) {
        self.contextId__v = [self string:@"contextId"];
        fields__set[0] |= 0x1; 
    }
    return self.contextId__v;
}
        

-(void)setContextId:(NSString *)v {
    self.contextId__v = v;
    fields__set[0] |= 0x1; 
}
        

-(NSString *)quickActionName {
    if ((fields__set[0] & 0x2) == 0) {
        self.quickActionName__v = [self string:@"quickActionName"];
        fields__set[0] |= 0x2; 
    }
    return self.quickActionName__v;
}
        

-(void)setQuickActionName:(NSString *)v {
    self.quickActionName__v = v;
    fields__set[0] |= 0x2; 
}
        

-(NSArray *)records {
    if ((fields__set[0] & 0x4) == 0) {
        self.records__v = [self complexTypeArrayFromElements:@"records" cls:[ZKSObject class]];
        fields__set[0] |= 0x4; 
    }
    return self.records__v;
}
        

-(void)setRecords:(NSArray *)v {
    self.records__v = v;
    fields__set[0] |= 0x4; 
}
        
-(void)serializeTo:(ZKXmlWriter *)env elemName:(NSString *)elemName {
	[env startElement:elemName];
	[env addElement:@"contextId"       elemValue:self.contextId       nillable:YES optional:NO];
	[env addElement:@"quickActionName" elemValue:self.quickActionName nillable:NO  optional:NO];
	[env addElementArray:@"records"    elemValue:self.records];
	[env endElement:elemName];
}
@end
