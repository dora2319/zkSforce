// Copyright (c) 2015 Simon Fell
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

#import "ZKMatchResult.h"
#import "ZKEnvelope.h"
#import "ZKError.h"
#import "ZKMatchRecord.h"

@interface ZKMatchResult()
@property (strong,nonatomic) NSString  *entityType__v;
@property (strong,nonatomic) NSArray   *errors__v;
@property (strong,nonatomic) NSString  *matchEngine__v;
@property (strong,nonatomic) NSArray   *matchRecords__v;
@property (strong,nonatomic) NSString  *rule__v;
@property (assign,nonatomic) NSInteger  size__v;
@property (assign,nonatomic) BOOL       success__v;
@end

@implementation ZKMatchResult


+(void)load {
    [self registerType:self xmlName:@"MatchResult"];
}

+(ZKComplexTypeInfo *)wsdlSchema {
   static ZKComplexTypeInfo *wsdlSchema;
   static dispatch_once_t onceToken;
   dispatch_once(&onceToken, ^{
       wsdlSchema = [[ZKComplexTypeInfo alloc] initWithType:@"MatchResult" parent:nil
                    fields:@[
                        [[ZKComplexTypeFieldInfo alloc] initWithElementName:@"entityType" propertyName:@"entityType" optional:NO nillable:NO],
                        [[ZKComplexTypeFieldInfo alloc] initWithElementName:@"errors" propertyName:@"errors" optional:YES nillable:NO],
                        [[ZKComplexTypeFieldInfo alloc] initWithElementName:@"matchEngine" propertyName:@"matchEngine" optional:NO nillable:NO],
                        [[ZKComplexTypeFieldInfo alloc] initWithElementName:@"matchRecords" propertyName:@"matchRecords" optional:YES nillable:NO],
                        [[ZKComplexTypeFieldInfo alloc] initWithElementName:@"rule" propertyName:@"rule" optional:NO nillable:NO],
                        [[ZKComplexTypeFieldInfo alloc] initWithElementName:@"size" propertyName:@"size" optional:NO nillable:NO],
                        [[ZKComplexTypeFieldInfo alloc] initWithElementName:@"success" propertyName:@"success" optional:NO nillable:NO],

                    ]];
   });
   return wsdlSchema;
}
    

-(NSString *)entityType {
    if ((fields__set[0] & 0x1) == 0) {
        self.entityType__v = [self string:@"entityType"];
        fields__set[0] |= 0x1; 
    }
    return self.entityType__v;
}
        

-(void)setEntityType:(NSString *)v {
    self.entityType__v = v;
    fields__set[0] |= 0x1; 
}
        

-(NSArray *)errors {
    if ((fields__set[0] & 0x2) == 0) {
        self.errors__v = [self complexTypeArrayFromElements:@"errors" cls:[ZKError class]];
        fields__set[0] |= 0x2; 
    }
    return self.errors__v;
}
        

-(void)setErrors:(NSArray *)v {
    self.errors__v = v;
    fields__set[0] |= 0x2; 
}
        

-(NSString *)matchEngine {
    if ((fields__set[0] & 0x4) == 0) {
        self.matchEngine__v = [self string:@"matchEngine"];
        fields__set[0] |= 0x4; 
    }
    return self.matchEngine__v;
}
        

-(void)setMatchEngine:(NSString *)v {
    self.matchEngine__v = v;
    fields__set[0] |= 0x4; 
}
        

-(NSArray *)matchRecords {
    if ((fields__set[0] & 0x8) == 0) {
        self.matchRecords__v = [self complexTypeArrayFromElements:@"matchRecords" cls:[ZKMatchRecord class]];
        fields__set[0] |= 0x8; 
    }
    return self.matchRecords__v;
}
        

-(void)setMatchRecords:(NSArray *)v {
    self.matchRecords__v = v;
    fields__set[0] |= 0x8; 
}
        

-(NSString *)rule {
    if ((fields__set[0] & 0x10) == 0) {
        self.rule__v = [self string:@"rule"];
        fields__set[0] |= 0x10; 
    }
    return self.rule__v;
}
        

-(void)setRule:(NSString *)v {
    self.rule__v = v;
    fields__set[0] |= 0x10; 
}
        

-(NSInteger)size {
    if ((fields__set[0] & 0x20) == 0) {
        self.size__v = [self integer:@"size"];
        fields__set[0] |= 0x20; 
    }
    return self.size__v;
}
        

-(void)setSize:(NSInteger)v {
    self.size__v = v;
    fields__set[0] |= 0x20; 
}
        

-(BOOL)success {
    if ((fields__set[0] & 0x40) == 0) {
        self.success__v = [self boolean:@"success"];
        fields__set[0] |= 0x40; 
    }
    return self.success__v;
}
        

-(void)setSuccess:(BOOL)v {
    self.success__v = v;
    fields__set[0] |= 0x40; 
}
        
-(void)serializeTo:(ZKXmlWriter *)env elemName:(NSString *)elemName {
	[env startElement:elemName];
	[env addElement:@"entityType"        elemValue:self.entityType   nillable:NO  optional:NO];
	[env addElementArray:@"errors"       elemValue:self.errors];
	[env addElement:@"matchEngine"       elemValue:self.matchEngine  nillable:NO  optional:NO];
	[env addElementArray:@"matchRecords" elemValue:self.matchRecords];
	[env addElement:@"rule"              elemValue:self.rule         nillable:NO  optional:NO];
	[env addIntElement:@"size"           elemValue:self.size];
	[env addBoolElement:@"success"       elemValue:self.success];
	[env endElement:elemName];
}
@end
