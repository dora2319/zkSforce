// Copyright (c) 2016 Simon Fell
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

#import "ZKFindDuplicatesResult.h"
#import "ZKEnvelope.h"
#import "ZKDuplicateResult.h"
#import "ZKError.h"

@interface ZKFindDuplicatesResult()
@property (strong,nonatomic) NSArray  *duplicateResults__v;
@property (strong,nonatomic) NSArray  *errors__v;
@property (assign,nonatomic) BOOL      success__v;
@end

@implementation ZKFindDuplicatesResult


+(void)load {
    [self registerType:self xmlName:@"FindDuplicatesResult"];
}

+(ZKComplexTypeInfo *)wsdlSchema {
   static ZKComplexTypeInfo *wsdlSchema;
   static dispatch_once_t onceToken;
   dispatch_once(&onceToken, ^{
       wsdlSchema = [[ZKComplexTypeInfo alloc] initWithType:@"FindDuplicatesResult" parent:nil
                    fields:@[
                        [[ZKComplexTypeFieldInfo alloc] initWithElementName:@"duplicateResults" propertyName:@"duplicateResults" optional:YES nillable:NO],
                        [[ZKComplexTypeFieldInfo alloc] initWithElementName:@"errors" propertyName:@"errors" optional:YES nillable:NO],
                        [[ZKComplexTypeFieldInfo alloc] initWithElementName:@"success" propertyName:@"success" optional:NO nillable:NO],

                    ]];
   });
   return wsdlSchema;
}
    

-(NSArray *)duplicateResults {
    if ((fields__set[0] & 0x1) == 0) {
        self.duplicateResults__v = [self complexTypeArrayFromElements:@"duplicateResults" cls:[ZKDuplicateResult class]];
        fields__set[0] |= 0x1; 
    }
    return self.duplicateResults__v;
}
        

-(void)setDuplicateResults:(NSArray *)v {
    self.duplicateResults__v = v;
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
        

-(BOOL)success {
    if ((fields__set[0] & 0x4) == 0) {
        self.success__v = [self boolean:@"success"];
        fields__set[0] |= 0x4; 
    }
    return self.success__v;
}
        

-(void)setSuccess:(BOOL)v {
    self.success__v = v;
    fields__set[0] |= 0x4; 
}
        
-(void)serializeTo:(ZKXmlWriter *)env elemName:(NSString *)elemName {
	[env startElement:elemName];
	[env addElementArray:@"duplicateResults" elemValue:self.duplicateResults];
	[env addElementArray:@"errors"           elemValue:self.errors];
	[env addBoolElement:@"success"           elemValue:self.success];
	[env endElement:elemName];
}
@end
