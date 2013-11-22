// Copyright (c) 2010 Ron Hess
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

@class ZKDescribeLayoutButtonSection;
@class ZKDescribeLayoutSection;
@class ZKDescribeQuickActionListResult;
@class ZKRelatedContent;
/*
<complexType name="DescribeLayout" xmlns="http://www.w3.org/2001/XMLSchema" xmlns:ens="urn:sobject.partner.soap.sforce.com" xmlns:tns="urn:partner.soap.sforce.com" xmlns:fns="urn:fault.partner.soap.sforce.com" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:soap="http://schemas.xmlsoap.org/wsdl/soap/" xmlns="http://schemas.xmlsoap.org/wsdl/">
  <sequence>
    <element minOccurs="0" type="tns:DescribeLayoutButtonSection" name="buttonLayoutSection"/>
    <element maxOccurs="unbounded" minOccurs="0" type="tns:DescribeLayoutSection" name="detailLayoutSections"/>
    <element maxOccurs="unbounded" minOccurs="0" type="tns:DescribeLayoutSection" name="editLayoutSections"/>
    <element minOccurs="0" type="tns:DescribeLayoutSection" name="highlightsPanelLayoutSection"/>
    <element nillable="true" type="tns:ID" name="id"/>
    <element minOccurs="0" type="tns:DescribeQuickActionListResult" name="quickActionList"/>
    <element maxOccurs="1" minOccurs="0" type="tns:RelatedContent" name="relatedContent"/>
    <element maxOccurs="unbounded" minOccurs="0" type="tns:RelatedList" name="relatedLists"/>
  </sequence>
</complexType>
*/
@interface ZKDescribeLayout : ZKXmlDeserializer {
}
@property (readonly) ZKDescribeLayoutButtonSection    *buttonLayoutSection; 
@property (readonly) NSArray                          *detailLayoutSections;  // of ZKDescribeLayoutSection
@property (readonly) NSArray                          *editLayoutSections;  // of ZKDescribeLayoutSection
@property (readonly) ZKDescribeLayoutSection          *highlightsPanelLayoutSection; 
@property (readonly) NSString                         *id; 
@property (readonly) ZKDescribeQuickActionListResult  *quickActionList; 
@property (readonly) ZKRelatedContent                 *relatedContent; 
@property (readonly) NSArray                          *relatedLists;  // of ZKRelatedList
@end
