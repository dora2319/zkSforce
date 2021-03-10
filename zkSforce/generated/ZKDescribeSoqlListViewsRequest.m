// Copyright (c) 2014 Simon Fell
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

#import "ZKDescribeSoqlListViewsRequest.h"
#import "ZKEnvelope.h"
#import "ZKDescribeSoqlListViewParams.h"

@interface ZKDescribeSoqlListViewsRequest()
@property (strong,nonatomic) NSArray  *listViewParams__v;
@end

@implementation ZKDescribeSoqlListViewsRequest


+(void)load {
    [self registerType:self xmlName:@"DescribeSoqlListViewsRequest"];
}

+(ZKComplexTypeInfo *)wsdlSchema {
   static ZKComplexTypeInfo *wsdlSchema;
   static dispatch_once_t onceToken;
   dispatch_once(&onceToken, ^{
       wsdlSchema = [[ZKComplexTypeInfo alloc] initWithType:@"DescribeSoqlListViewsRequest" parent:nil
                    fields:@[
                        [[ZKComplexTypeFieldInfo alloc] initWithElementName:@"listViewParams" propertyName:@"listViewParams" optional:NO nillable:NO],

                    ]];
   });
   return wsdlSchema;
}
    

-(NSArray *)listViewParams {
    if ((fields__set[0] & 0x1) == 0) {
        self.listViewParams__v = [self complexTypeArrayFromElements:@"listViewParams" cls:[ZKDescribeSoqlListViewParams class]];
        fields__set[0] |= 0x1; 
    }
    return self.listViewParams__v;
}
        

-(void)setListViewParams:(NSArray *)v {
    self.listViewParams__v = v;
    fields__set[0] |= 0x1; 
}
        
-(void)serializeTo:(ZKXmlWriter *)env elemName:(NSString *)elemName {
	[env startElement:elemName];
	[env addElementArray:@"listViewParams" elemValue:self.listViewParams];
	[env endElement:elemName];
}
@end
