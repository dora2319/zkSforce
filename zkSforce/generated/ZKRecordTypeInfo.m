// Copyright (c) 2007 Simon Fell
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

#import "ZKRecordTypeInfo.h"

@implementation ZKRecordTypeInfo

+(void)load {
   [self registerType:self xmlName:@"RecordTypeInfo"];
}

      
-(BOOL)active {
    return [self boolean:@"active"];
}
			
-(BOOL)available {
    return [self boolean:@"available"];
}
			
-(BOOL)defaultRecordTypeMapping {
    return [self boolean:@"defaultRecordTypeMapping"];
}
			
-(NSString *)developerName {
    return [self string:@"developerName"];
}
			
-(BOOL)master {
    return [self boolean:@"master"];
}
			
-(NSString *)name {
    return [self string:@"name"];
}
			
-(NSString *)recordTypeId {
    return [self string:@"recordTypeId"];
}
			
@end
