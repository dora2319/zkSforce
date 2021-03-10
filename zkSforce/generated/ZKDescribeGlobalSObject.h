// Copyright (c) 2009-2010 Simon Fell
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

#import "ZKXMLSerializable.h"
#import "ZKComplexTypeFieldInfo.h"
#import "ZKXmlDeserializer.h"
#import "ZKParser.h"

/*
<complexType name="DescribeGlobalSObjectResult" xmlns="http://www.w3.org/2001/XMLSchema" xmlns:soap="http://schemas.xmlsoap.org/wsdl/soap/" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:fns="urn:fault.partner.soap.sforce.com" xmlns:tns="urn:partner.soap.sforce.com" xmlns:ens="urn:sobject.partner.soap.sforce.com">
  <sequence>
    <element type="xsd:boolean" name="activateable"/>
    <element nillable="true" type="xsd:string" name="associateEntityType"/>
    <element nillable="true" type="xsd:string" name="associateParentEntity"/>
    <element type="xsd:boolean" name="createable"/>
    <element type="xsd:boolean" name="custom"/>
    <element type="xsd:boolean" name="customSetting"/>
    <element minOccurs="0" type="xsd:boolean" name="dataTranslationEnabled"/>
    <element type="xsd:boolean" name="deepCloneable"/>
    <element type="xsd:boolean" name="deletable"/>
    <element type="xsd:boolean" name="deprecatedAndHidden"/>
    <element type="xsd:boolean" name="feedEnabled"/>
    <element type="xsd:boolean" name="hasSubtypes"/>
    <element type="xsd:boolean" name="idEnabled"/>
    <element type="xsd:boolean" name="isInterface"/>
    <element type="xsd:boolean" name="isSubtype"/>
    <element nillable="true" type="xsd:string" name="keyPrefix"/>
    <element type="xsd:string" name="label"/>
    <element type="xsd:string" name="labelPlural"/>
    <element type="xsd:boolean" name="layoutable"/>
    <element type="xsd:boolean" name="mergeable"/>
    <element type="xsd:boolean" name="mruEnabled"/>
    <element type="xsd:string" name="name"/>
    <element type="xsd:boolean" name="queryable"/>
    <element type="xsd:boolean" name="replicateable"/>
    <element type="xsd:boolean" name="retrieveable"/>
    <element type="xsd:boolean" name="searchable"/>
    <element type="xsd:boolean" name="triggerable"/>
    <element type="xsd:boolean" name="undeletable"/>
    <element type="xsd:boolean" name="updateable"/>
  </sequence>
</complexType>
*/
@interface ZKDescribeGlobalSObject : ZKXmlDeserializer <ZKXMLSerializable> {
	UInt32   fields__set[1];
}
+(ZKComplexTypeInfo *)wsdlSchema;

@property (assign,nonatomic) BOOL       activateable; 
@property (strong,nonatomic) NSString  *associateEntityType; 
@property (strong,nonatomic) NSString  *associateParentEntity; 
@property (assign,nonatomic) BOOL       createable; 
@property (assign,nonatomic) BOOL       custom; 
@property (assign,nonatomic) BOOL       customSetting; 
@property (assign,nonatomic) BOOL       dataTranslationEnabled; 
@property (assign,nonatomic) BOOL       deepCloneable; 
@property (assign,nonatomic) BOOL       deletable; 
@property (assign,nonatomic) BOOL       deprecatedAndHidden; 
@property (assign,nonatomic) BOOL       feedEnabled; 
@property (assign,nonatomic) BOOL       hasSubtypes; 
@property (assign,nonatomic) BOOL       idEnabled; 
@property (assign,nonatomic) BOOL       isInterface; 
@property (assign,nonatomic) BOOL       isSubtype; 
@property (strong,nonatomic) NSString  *keyPrefix; 
@property (strong,nonatomic) NSString  *label; 
@property (strong,nonatomic) NSString  *labelPlural; 
@property (assign,nonatomic) BOOL       layoutable; 
@property (assign,nonatomic) BOOL       mergeable; 
@property (assign,nonatomic) BOOL       mruEnabled; 
@property (strong,nonatomic) NSString  *name; 
@property (assign,nonatomic) BOOL       queryable; 
@property (assign,nonatomic) BOOL       replicateable; 
@property (assign,nonatomic) BOOL       retrieveable; 
@property (assign,nonatomic) BOOL       searchable; 
@property (assign,nonatomic) BOOL       triggerable; 
@property (assign,nonatomic) BOOL       undeletable; 
@property (assign,nonatomic) BOOL       updateable; 
@end
