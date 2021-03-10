// Copyright (c) 2006,2012 Simon Fell
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

@class ZKDescribeSObject;
@class ZKXsdAnyType;
@class ZKFilteredLookupInfo;
/*
<complexType name="Field" xmlns="http://www.w3.org/2001/XMLSchema" xmlns:soap="http://schemas.xmlsoap.org/wsdl/soap/" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:fns="urn:fault.partner.soap.sforce.com" xmlns:tns="urn:partner.soap.sforce.com" xmlns:ens="urn:sobject.partner.soap.sforce.com">
  <sequence>
    <element type="xsd:boolean" name="aggregatable"/>
    <element type="xsd:boolean" name="aiPredictionField"/>
    <element type="xsd:boolean" name="autoNumber"/>
    <element type="xsd:int" name="byteLength"/>
    <element type="xsd:boolean" name="calculated"/>
    <element minOccurs="0" type="xsd:string" name="calculatedFormula"/>
    <element minOccurs="0" type="xsd:boolean" name="cascadeDelete"/>
    <element type="xsd:boolean" name="caseSensitive"/>
    <element minOccurs="0" type="xsd:string" name="compoundFieldName"/>
    <element minOccurs="0" type="xsd:string" name="controllerName"/>
    <element type="xsd:boolean" name="createable"/>
    <element type="xsd:boolean" name="custom"/>
    <element minOccurs="0" type="xsd:boolean" name="dataTranslationEnabled"/>
    <element minOccurs="0" type="xsd:anyType" name="defaultValue"/>
    <element minOccurs="0" type="xsd:string" name="defaultValueFormula"/>
    <element type="xsd:boolean" name="defaultedOnCreate"/>
    <element minOccurs="0" type="xsd:boolean" name="dependentPicklist"/>
    <element type="xsd:boolean" name="deprecatedAndHidden"/>
    <element type="xsd:int" name="digits"/>
    <element minOccurs="0" type="xsd:boolean" name="displayLocationInDecimal"/>
    <element minOccurs="0" type="xsd:boolean" name="encrypted"/>
    <element minOccurs="0" type="xsd:boolean" name="externalId"/>
    <element minOccurs="0" type="xsd:string" name="extraTypeInfo"/>
    <element type="xsd:boolean" name="filterable"/>
    <element minOccurs="0" nillable="true" type="tns:FilteredLookupInfo" name="filteredLookupInfo"/>
    <element minOccurs="0" type="xsd:boolean" name="formulaTreatNullNumberAsZero"/>
    <element type="xsd:boolean" name="groupable"/>
    <element minOccurs="0" type="xsd:boolean" name="highScaleNumber"/>
    <element minOccurs="0" type="xsd:boolean" name="htmlFormatted"/>
    <element type="xsd:boolean" name="idLookup"/>
    <element minOccurs="0" type="xsd:string" name="inlineHelpText"/>
    <element type="xsd:string" name="label"/>
    <element type="xsd:int" name="length"/>
    <element minOccurs="0" type="xsd:string" name="mask"/>
    <element minOccurs="0" type="xsd:string" name="maskType"/>
    <element type="xsd:string" name="name"/>
    <element type="xsd:boolean" name="nameField"/>
    <element minOccurs="0" type="xsd:boolean" name="namePointing"/>
    <element type="xsd:boolean" name="nillable"/>
    <element type="xsd:boolean" name="permissionable"/>
    <element maxOccurs="unbounded" minOccurs="0" nillable="true" type="tns:PicklistEntry" name="picklistValues"/>
    <element type="xsd:boolean" name="polymorphicForeignKey"/>
    <element type="xsd:int" name="precision"/>
    <element type="xsd:boolean" name="queryByDistance"/>
    <element minOccurs="0" type="xsd:string" name="referenceTargetField"/>
    <element maxOccurs="unbounded" minOccurs="0" nillable="true" type="xsd:string" name="referenceTo"/>
    <element minOccurs="0" type="xsd:string" name="relationshipName"/>
    <element minOccurs="0" type="xsd:int" name="relationshipOrder"/>
    <element minOccurs="0" type="xsd:boolean" name="restrictedDelete"/>
    <element type="xsd:boolean" name="restrictedPicklist"/>
    <element type="xsd:int" name="scale"/>
    <element type="xsd:boolean" name="searchPrefilterable"/>
    <element type="tns:soapType" name="soapType"/>
    <element minOccurs="0" type="xsd:boolean" name="sortable"/>
    <element type="tns:fieldType" name="type"/>
    <element type="xsd:boolean" name="unique"/>
    <element type="xsd:boolean" name="updateable"/>
    <element minOccurs="0" type="xsd:boolean" name="writeRequiresMasterRead"/>
  </sequence>
</complexType>
*/
@interface ZKDescribeField : ZKXmlDeserializer <ZKXMLSerializable> {
	UInt64   fields__set[1];
	ZKDescribeSObject *__weak sobject;
}
@property (weak) ZKDescribeSObject *sobject;

+(ZKComplexTypeInfo *)wsdlSchema;

@property (assign,nonatomic) BOOL                   aggregatable; 
@property (assign,nonatomic) BOOL                   aiPredictionField; 
@property (assign,nonatomic) BOOL                   autoNumber; 
@property (assign,nonatomic) NSInteger              byteLength; 
@property (assign,nonatomic) BOOL                   calculated; 
@property (strong,nonatomic) NSString              *calculatedFormula; 
@property (assign,nonatomic) BOOL                   cascadeDelete; 
@property (assign,nonatomic) BOOL                   caseSensitive; 
@property (strong,nonatomic) NSString              *compoundFieldName; 
@property (strong,nonatomic) NSString              *controllerName; 
@property (assign,nonatomic) BOOL                   createable; 
@property (assign,nonatomic) BOOL                   custom; 
@property (assign,nonatomic) BOOL                   dataTranslationEnabled; 
@property (strong,nonatomic) ZKXsdAnyType          *defaultValue; 
@property (strong,nonatomic) NSString              *defaultValueFormula; 
@property (assign,nonatomic) BOOL                   defaultedOnCreate; 
@property (assign,nonatomic) BOOL                   dependentPicklist; 
@property (assign,nonatomic) BOOL                   deprecatedAndHidden; 
@property (assign,nonatomic) NSInteger              digits; 
@property (assign,nonatomic) BOOL                   displayLocationInDecimal; 
@property (assign,nonatomic) BOOL                   encrypted; 
@property (assign,nonatomic) BOOL                   externalId; 
@property (strong,nonatomic) NSString              *extraTypeInfo; 
@property (assign,nonatomic) BOOL                   filterable; 
@property (strong,nonatomic) ZKFilteredLookupInfo  *filteredLookupInfo; 
@property (assign,nonatomic) BOOL                   formulaTreatNullNumberAsZero; 
@property (assign,nonatomic) BOOL                   groupable; 
@property (assign,nonatomic) BOOL                   highScaleNumber; 
@property (assign,nonatomic) BOOL                   htmlFormatted; 
@property (assign,nonatomic) BOOL                   idLookup; 
@property (strong,nonatomic) NSString              *inlineHelpText; 
@property (strong,nonatomic) NSString              *label; 
@property (assign,nonatomic) NSInteger              length; 
@property (strong,nonatomic) NSString              *mask; 
@property (strong,nonatomic) NSString              *maskType; 
@property (strong,nonatomic) NSString              *name; 
@property (assign,nonatomic) BOOL                   nameField; 
@property (assign,nonatomic) BOOL                   namePointing; 
@property (assign,nonatomic) BOOL                   nillable; 
@property (assign,nonatomic) BOOL                   permissionable; 
@property (strong,nonatomic) NSArray               *picklistValues;  // of ZKPicklistEntry
@property (assign,nonatomic) BOOL                   polymorphicForeignKey; 
@property (assign,nonatomic) NSInteger              precision; 
@property (assign,nonatomic) BOOL                   queryByDistance; 
@property (strong,nonatomic) NSString              *referenceTargetField; 
@property (strong,nonatomic) NSArray               *referenceTo;  // of NSString
@property (strong,nonatomic) NSString              *relationshipName; 
@property (assign,nonatomic) NSInteger              relationshipOrder; 
@property (assign,nonatomic) BOOL                   restrictedDelete; 
@property (assign,nonatomic) BOOL                   restrictedPicklist; 
@property (assign,nonatomic) NSInteger              scale; 
@property (assign,nonatomic) BOOL                   searchPrefilterable; 
@property (strong,nonatomic) NSString              *soapType; 
@property (assign,nonatomic) BOOL                   sortable; 
@property (strong,nonatomic) NSString              *type; 
@property (assign,nonatomic) BOOL                   unique; 
@property (assign,nonatomic) BOOL                   updateable; 
@property (assign,nonatomic) BOOL                   writeRequiresMasterRead; 
@end
