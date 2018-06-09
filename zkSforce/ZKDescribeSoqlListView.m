// Copyright (c) 2014 Simon Fell
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
// 
// Note: This file was generated by WSDL2ZKSforce. 
//		  see https://github.com/superfell/WSDL2ZKSforce
//       DO NOT HAND EDIT.
//

#import "ZKDescribeSoqlListView.h"
#import "ZKListViewColumn.h"
#import "ZKListViewOrderBy.h"
#import "ZKSoqlWhereCondition.h"

@implementation ZKDescribeSoqlListView

-(NSArray *)columns {
    return [self complexTypeArrayFromElements:@"columns" cls:[ZKListViewColumn class]];
}
			
-(NSString *)id {
    return [self string:@"id"];
}
			
-(NSArray *)orderBy {
    return [self complexTypeArrayFromElements:@"orderBy" cls:[ZKListViewOrderBy class]];
}
			
-(NSString *)query {
    return [self string:@"query"];
}
			
-(NSString *)relatedEntityId {
    return [self string:@"relatedEntityId"];
}
			
-(NSString *)scope {
    return [self string:@"scope"];
}
			
-(NSString *)scopeEntityId {
    return [self string:@"scopeEntityId"];
}
			
-(NSString *)sobjectType {
    return [self string:@"sobjectType"];
}
			
-(ZKSoqlWhereCondition *)whereCondition {
    return [[self complexTypeArrayFromElements:@"whereCondition" cls:[ZKSoqlWhereCondition class]] lastObject];
}
			
@end
