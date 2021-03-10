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

#import "ZKSearchResultsMetadata.h"
#import "ZKEnvelope.h"
#import "ZKEntitySearchMetadata.h"
#import "ZKLabelsSearchMetadata.h"

@interface ZKSearchResultsMetadata()
@property (strong,nonatomic) NSArray  *entityLabelMetadata__v;
@property (strong,nonatomic) NSArray  *entityMetadata__v;
@end

@implementation ZKSearchResultsMetadata


+(void)load {
    [self registerType:self xmlName:@"SearchResultsMetadata"];
}

+(ZKComplexTypeInfo *)wsdlSchema {
   static ZKComplexTypeInfo *wsdlSchema;
   static dispatch_once_t onceToken;
   dispatch_once(&onceToken, ^{
       wsdlSchema = [[ZKComplexTypeInfo alloc] initWithType:@"SearchResultsMetadata" parent:nil
                    fields:@[
                        [[ZKComplexTypeFieldInfo alloc] initWithElementName:@"entityLabelMetadata" propertyName:@"entityLabelMetadata" optional:YES nillable:NO],
                        [[ZKComplexTypeFieldInfo alloc] initWithElementName:@"entityMetadata" propertyName:@"entityMetadata" optional:YES nillable:NO],

                    ]];
   });
   return wsdlSchema;
}
    

-(NSArray *)entityLabelMetadata {
    if ((fields__set[0] & 0x1) == 0) {
        self.entityLabelMetadata__v = [self complexTypeArrayFromElements:@"entityLabelMetadata" cls:[ZKLabelsSearchMetadata class]];
        fields__set[0] |= 0x1; 
    }
    return self.entityLabelMetadata__v;
}
        

-(void)setEntityLabelMetadata:(NSArray *)v {
    self.entityLabelMetadata__v = v;
    fields__set[0] |= 0x1; 
}
        

-(NSArray *)entityMetadata {
    if ((fields__set[0] & 0x2) == 0) {
        self.entityMetadata__v = [self complexTypeArrayFromElements:@"entityMetadata" cls:[ZKEntitySearchMetadata class]];
        fields__set[0] |= 0x2; 
    }
    return self.entityMetadata__v;
}
        

-(void)setEntityMetadata:(NSArray *)v {
    self.entityMetadata__v = v;
    fields__set[0] |= 0x2; 
}
        
-(void)serializeTo:(ZKXmlWriter *)env elemName:(NSString *)elemName {
	[env startElement:elemName];
	[env addElementArray:@"entityLabelMetadata" elemValue:self.entityLabelMetadata];
	[env addElementArray:@"entityMetadata"      elemValue:self.entityMetadata];
	[env endElement:elemName];
}
@end
