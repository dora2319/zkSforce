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
<complexType name="LeadConvertResult" xmlns="http://www.w3.org/2001/XMLSchema" xmlns:ens="urn:sobject.partner.soap.sforce.com" xmlns:tns="urn:partner.soap.sforce.com" xmlns:fns="urn:fault.partner.soap.sforce.com" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:soap="http://schemas.xmlsoap.org/wsdl/soap/" xmlns="http://schemas.xmlsoap.org/wsdl/">
  <sequence>
    <element nillable="true" type="tns:ID" name="accountId"/>
    <element nillable="true" type="tns:ID" name="contactId"/>
    <element maxOccurs="unbounded" minOccurs="0" type="tns:Error" name="errors"/>
    <element nillable="true" type="tns:ID" name="leadId"/>
    <element nillable="true" type="tns:ID" name="opportunityId"/>
    <element type="xsd:boolean" name="success"/>
  </sequence>
</complexType>
*/
@interface ZKLeadConvertResult : ZKXmlDeserializer {
}
@property (readonly) NSString  *accountId; 
@property (readonly) NSString  *contactId; 
@property (readonly) NSArray   *errors;  // of ZKError
@property (readonly) NSString  *leadId; 
@property (readonly) NSString  *opportunityId; 
@property (readonly) BOOL       success; 
@end
