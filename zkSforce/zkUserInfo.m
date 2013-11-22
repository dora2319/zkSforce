// Copyright (c) 2013 Simon Fell
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

#import "ZKUserInfo.h"

@implementation ZKUserInfo

-(BOOL)accessibilityMode {
    return [self boolean:@"accessibilityMode"];
}
			
-(NSString *)currencySymbol {
    return [self string:@"currencySymbol"];
}
			
-(NSInteger)orgAttachmentFileSizeLimit {
    return [self integer:@"orgAttachmentFileSizeLimit"];
}
			
-(NSString *)orgDefaultCurrencyIsoCode {
    return [self string:@"orgDefaultCurrencyIsoCode"];
}
			
-(BOOL)orgDisallowHtmlAttachments {
    return [self boolean:@"orgDisallowHtmlAttachments"];
}
			
-(BOOL)orgHasPersonAccounts {
    return [self boolean:@"orgHasPersonAccounts"];
}
			
-(NSString *)organizationId {
    return [self string:@"organizationId"];
}
			
-(BOOL)organizationMultiCurrency {
    return [self boolean:@"organizationMultiCurrency"];
}
			
-(NSString *)organizationName {
    return [self string:@"organizationName"];
}
			
-(NSString *)profileId {
    return [self string:@"profileId"];
}
			
-(NSString *)roleId {
    return [self string:@"roleId"];
}
			
-(NSInteger)sessionSecondsValid {
    return [self integer:@"sessionSecondsValid"];
}
			
-(NSString *)userDefaultCurrencyIsoCode {
    return [self string:@"userDefaultCurrencyIsoCode"];
}
			
-(NSString *)userEmail {
    return [self string:@"userEmail"];
}
			
-(NSString *)userFullName {
    return [self string:@"userFullName"];
}
			
-(NSString *)userId {
    return [self string:@"userId"];
}
			
-(NSString *)userLanguage {
    return [self string:@"userLanguage"];
}
			
-(NSString *)userLocale {
    return [self string:@"userLocale"];
}
			
-(NSString *)userName {
    return [self string:@"userName"];
}
			
-(NSString *)userTimeZone {
    return [self string:@"userTimeZone"];
}
			
-(NSString *)userType {
    return [self string:@"userType"];
}
			
-(NSString *)userUiSkin {
    return [self string:@"userUiSkin"];
}
			
@end
