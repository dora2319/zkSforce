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

#import "zkXmlDeserializer.h"

/*
<complexType name="GetUserInfoResult" xmlns="http://www.w3.org/2001/XMLSchema" xmlns:ens="urn:sobject.partner.soap.sforce.com" xmlns:tns="urn:partner.soap.sforce.com" xmlns:fns="urn:fault.partner.soap.sforce.com" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:soap="http://schemas.xmlsoap.org/wsdl/soap/" xmlns="http://schemas.xmlsoap.org/wsdl/">
  <sequence>
    <element type="xsd:boolean" name="accessibilityMode"/>
    <element nillable="true" type="xsd:string" name="currencySymbol"/>
    <element type="xsd:int" name="orgAttachmentFileSizeLimit"/>
    <element nillable="true" type="xsd:string" name="orgDefaultCurrencyIsoCode"/>
    <element type="xsd:boolean" name="orgDisallowHtmlAttachments"/>
    <element type="xsd:boolean" name="orgHasPersonAccounts"/>
    <element type="tns:ID" name="organizationId"/>
    <element type="xsd:boolean" name="organizationMultiCurrency"/>
    <element type="xsd:string" name="organizationName"/>
    <element type="tns:ID" name="profileId"/>
    <element nillable="true" type="tns:ID" name="roleId"/>
    <element type="xsd:int" name="sessionSecondsValid"/>
    <element nillable="true" type="xsd:string" name="userDefaultCurrencyIsoCode"/>
    <element type="xsd:string" name="userEmail"/>
    <element type="xsd:string" name="userFullName"/>
    <element type="tns:ID" name="userId"/>
    <element type="xsd:string" name="userLanguage"/>
    <element type="xsd:string" name="userLocale"/>
    <element type="xsd:string" name="userName"/>
    <element type="xsd:string" name="userTimeZone"/>
    <element type="xsd:string" name="userType"/>
    <element type="xsd:string" name="userUiSkin"/>
  </sequence>
</complexType>
*/
@interface ZKUserInfo : ZKXmlDeserializer {
}
@property (readonly) BOOL       accessibilityMode; 
@property (readonly) NSString  *currencySymbol; 
@property (readonly) NSInteger  orgAttachmentFileSizeLimit; 
@property (readonly) NSString  *orgDefaultCurrencyIsoCode; 
@property (readonly) BOOL       orgDisallowHtmlAttachments; 
@property (readonly) BOOL       orgHasPersonAccounts; 
@property (readonly) NSString  *organizationId; 
@property (readonly) BOOL       organizationMultiCurrency; 
@property (readonly) NSString  *organizationName; 
@property (readonly) NSString  *profileId; 
@property (readonly) NSString  *roleId; 
@property (readonly) NSInteger  sessionSecondsValid; 
@property (readonly) NSString  *userDefaultCurrencyIsoCode; 
@property (readonly) NSString  *userEmail; 
@property (readonly) NSString  *userFullName; 
@property (readonly) NSString  *userId; 
@property (readonly) NSString  *userLanguage; 
@property (readonly) NSString  *userLocale; 
@property (readonly) NSString  *userName; 
@property (readonly) NSString  *userTimeZone; 
@property (readonly) NSString  *userType; 
@property (readonly) NSString  *userUiSkin; 
@end
