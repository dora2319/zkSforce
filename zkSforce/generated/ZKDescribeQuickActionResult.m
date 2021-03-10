// Copyright (c) 2013 Simon Fell
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

#import "ZKDescribeQuickActionResult.h"
#import "ZKEnvelope.h"
#import "ZKDescribeColor.h"
#import "ZKDescribeIcon.h"
#import "ZKDescribeLayoutSection.h"
#import "ZKDescribeQuickActionDefaultValue.h"

@interface ZKDescribeQuickActionResult()
@property (strong,nonatomic) NSString                 *accessLevelRequired__v;
@property (strong,nonatomic) NSString                 *actionEnumOrId__v;
@property (strong,nonatomic) NSString                 *canvasApplicationId__v;
@property (strong,nonatomic) NSString                 *canvasApplicationName__v;
@property (strong,nonatomic) NSArray                  *colors__v;
@property (strong,nonatomic) NSString                 *contextSobjectType__v;
@property (strong,nonatomic) NSArray                  *defaultValues__v;
@property (strong,nonatomic) NSString                 *flowDevName__v;
@property (strong,nonatomic) NSString                 *flowRecordIdVar__v;
@property (assign,nonatomic) NSInteger                 height__v;
@property (strong,nonatomic) NSString                 *iconName__v;
@property (strong,nonatomic) NSString                 *iconUrl__v;
@property (strong,nonatomic) NSArray                  *icons__v;
@property (strong,nonatomic) NSString                 *label__v;
@property (strong,nonatomic) ZKDescribeLayoutSection  *layout__v;
@property (strong,nonatomic) NSString                 *lightningComponentBundleId__v;
@property (strong,nonatomic) NSString                 *lightningComponentBundleName__v;
@property (strong,nonatomic) NSString                 *lightningComponentQualifiedName__v;
@property (strong,nonatomic) NSString                 *lightningWebComponentBundleId__v;
@property (strong,nonatomic) NSString                 *lightningWebComponentBundleName__v;
@property (strong,nonatomic) NSString                 *lightningWebComponentQualifiedName__v;
@property (strong,nonatomic) NSString                 *miniIconUrl__v;
@property (strong,nonatomic) NSString                 *mobileExtensionId__v;
@property (strong,nonatomic) NSString                 *name__v;
@property (assign,nonatomic) BOOL                      showQuickActionLcHeader__v;
@property (assign,nonatomic) BOOL                      showQuickActionVfHeader__v;
@property (strong,nonatomic) NSString                 *targetParentField__v;
@property (strong,nonatomic) NSString                 *targetRecordTypeId__v;
@property (strong,nonatomic) NSString                 *targetSobjectType__v;
@property (strong,nonatomic) NSString                 *type__v;
@property (strong,nonatomic) NSString                 *visualforcePageName__v;
@property (strong,nonatomic) NSString                 *visualforcePageUrl__v;
@property (assign,nonatomic) NSInteger                 width__v;
@end

@implementation ZKDescribeQuickActionResult


+(void)load {
    [self registerType:self xmlName:@"DescribeQuickActionResult"];
}

+(ZKComplexTypeInfo *)wsdlSchema {
   static ZKComplexTypeInfo *wsdlSchema;
   static dispatch_once_t onceToken;
   dispatch_once(&onceToken, ^{
       wsdlSchema = [[ZKComplexTypeInfo alloc] initWithType:@"DescribeQuickActionResult" parent:nil
                    fields:@[
                        [[ZKComplexTypeFieldInfo alloc] initWithElementName:@"accessLevelRequired" propertyName:@"accessLevelRequired" optional:NO nillable:YES],
                        [[ZKComplexTypeFieldInfo alloc] initWithElementName:@"actionEnumOrId" propertyName:@"actionEnumOrId" optional:NO nillable:NO],
                        [[ZKComplexTypeFieldInfo alloc] initWithElementName:@"canvasApplicationId" propertyName:@"canvasApplicationId" optional:NO nillable:YES],
                        [[ZKComplexTypeFieldInfo alloc] initWithElementName:@"canvasApplicationName" propertyName:@"canvasApplicationName" optional:NO nillable:YES],
                        [[ZKComplexTypeFieldInfo alloc] initWithElementName:@"colors" propertyName:@"colors" optional:YES nillable:NO],
                        [[ZKComplexTypeFieldInfo alloc] initWithElementName:@"contextSobjectType" propertyName:@"contextSobjectType" optional:NO nillable:YES],
                        [[ZKComplexTypeFieldInfo alloc] initWithElementName:@"defaultValues" propertyName:@"defaultValues" optional:YES nillable:YES],
                        [[ZKComplexTypeFieldInfo alloc] initWithElementName:@"flowDevName" propertyName:@"flowDevName" optional:NO nillable:YES],
                        [[ZKComplexTypeFieldInfo alloc] initWithElementName:@"flowRecordIdVar" propertyName:@"flowRecordIdVar" optional:NO nillable:YES],
                        [[ZKComplexTypeFieldInfo alloc] initWithElementName:@"height" propertyName:@"height" optional:NO nillable:YES],
                        [[ZKComplexTypeFieldInfo alloc] initWithElementName:@"iconName" propertyName:@"iconName" optional:NO nillable:YES],
                        [[ZKComplexTypeFieldInfo alloc] initWithElementName:@"iconUrl" propertyName:@"iconUrl" optional:NO nillable:YES],
                        [[ZKComplexTypeFieldInfo alloc] initWithElementName:@"icons" propertyName:@"icons" optional:YES nillable:NO],
                        [[ZKComplexTypeFieldInfo alloc] initWithElementName:@"label" propertyName:@"label" optional:NO nillable:NO],
                        [[ZKComplexTypeFieldInfo alloc] initWithElementName:@"layout" propertyName:@"layout" optional:NO nillable:YES],
                        [[ZKComplexTypeFieldInfo alloc] initWithElementName:@"lightningComponentBundleId" propertyName:@"lightningComponentBundleId" optional:NO nillable:YES],
                        [[ZKComplexTypeFieldInfo alloc] initWithElementName:@"lightningComponentBundleName" propertyName:@"lightningComponentBundleName" optional:NO nillable:YES],
                        [[ZKComplexTypeFieldInfo alloc] initWithElementName:@"lightningComponentQualifiedName" propertyName:@"lightningComponentQualifiedName" optional:NO nillable:YES],
                        [[ZKComplexTypeFieldInfo alloc] initWithElementName:@"lightningWebComponentBundleId" propertyName:@"lightningWebComponentBundleId" optional:NO nillable:YES],
                        [[ZKComplexTypeFieldInfo alloc] initWithElementName:@"lightningWebComponentBundleName" propertyName:@"lightningWebComponentBundleName" optional:NO nillable:YES],
                        [[ZKComplexTypeFieldInfo alloc] initWithElementName:@"lightningWebComponentQualifiedName" propertyName:@"lightningWebComponentQualifiedName" optional:NO nillable:YES],
                        [[ZKComplexTypeFieldInfo alloc] initWithElementName:@"miniIconUrl" propertyName:@"miniIconUrl" optional:NO nillable:YES],
                        [[ZKComplexTypeFieldInfo alloc] initWithElementName:@"mobileExtensionId" propertyName:@"mobileExtensionId" optional:NO nillable:YES],
                        [[ZKComplexTypeFieldInfo alloc] initWithElementName:@"name" propertyName:@"name" optional:NO nillable:NO],
                        [[ZKComplexTypeFieldInfo alloc] initWithElementName:@"showQuickActionLcHeader" propertyName:@"showQuickActionLcHeader" optional:NO nillable:NO],
                        [[ZKComplexTypeFieldInfo alloc] initWithElementName:@"showQuickActionVfHeader" propertyName:@"showQuickActionVfHeader" optional:NO nillable:NO],
                        [[ZKComplexTypeFieldInfo alloc] initWithElementName:@"targetParentField" propertyName:@"targetParentField" optional:NO nillable:YES],
                        [[ZKComplexTypeFieldInfo alloc] initWithElementName:@"targetRecordTypeId" propertyName:@"targetRecordTypeId" optional:NO nillable:YES],
                        [[ZKComplexTypeFieldInfo alloc] initWithElementName:@"targetSobjectType" propertyName:@"targetSobjectType" optional:NO nillable:YES],
                        [[ZKComplexTypeFieldInfo alloc] initWithElementName:@"type" propertyName:@"type" optional:NO nillable:NO],
                        [[ZKComplexTypeFieldInfo alloc] initWithElementName:@"visualforcePageName" propertyName:@"visualforcePageName" optional:NO nillable:YES],
                        [[ZKComplexTypeFieldInfo alloc] initWithElementName:@"visualforcePageUrl" propertyName:@"visualforcePageUrl" optional:NO nillable:YES],
                        [[ZKComplexTypeFieldInfo alloc] initWithElementName:@"width" propertyName:@"width" optional:NO nillable:YES],

                    ]];
   });
   return wsdlSchema;
}
    

-(NSString *)accessLevelRequired {
    if ((fields__set[0] & 0x1) == 0) {
        self.accessLevelRequired__v = [self string:@"accessLevelRequired"];
        fields__set[0] |= 0x1; 
    }
    return self.accessLevelRequired__v;
}
        

-(void)setAccessLevelRequired:(NSString *)v {
    self.accessLevelRequired__v = v;
    fields__set[0] |= 0x1; 
}
        

-(NSString *)actionEnumOrId {
    if ((fields__set[0] & 0x2) == 0) {
        self.actionEnumOrId__v = [self string:@"actionEnumOrId"];
        fields__set[0] |= 0x2; 
    }
    return self.actionEnumOrId__v;
}
        

-(void)setActionEnumOrId:(NSString *)v {
    self.actionEnumOrId__v = v;
    fields__set[0] |= 0x2; 
}
        

-(NSString *)canvasApplicationId {
    if ((fields__set[0] & 0x4) == 0) {
        self.canvasApplicationId__v = [self string:@"canvasApplicationId"];
        fields__set[0] |= 0x4; 
    }
    return self.canvasApplicationId__v;
}
        

-(void)setCanvasApplicationId:(NSString *)v {
    self.canvasApplicationId__v = v;
    fields__set[0] |= 0x4; 
}
        

-(NSString *)canvasApplicationName {
    if ((fields__set[0] & 0x8) == 0) {
        self.canvasApplicationName__v = [self string:@"canvasApplicationName"];
        fields__set[0] |= 0x8; 
    }
    return self.canvasApplicationName__v;
}
        

-(void)setCanvasApplicationName:(NSString *)v {
    self.canvasApplicationName__v = v;
    fields__set[0] |= 0x8; 
}
        

-(NSArray *)colors {
    if ((fields__set[0] & 0x10) == 0) {
        self.colors__v = [self complexTypeArrayFromElements:@"colors" cls:[ZKDescribeColor class]];
        fields__set[0] |= 0x10; 
    }
    return self.colors__v;
}
        

-(void)setColors:(NSArray *)v {
    self.colors__v = v;
    fields__set[0] |= 0x10; 
}
        

-(NSString *)contextSobjectType {
    if ((fields__set[0] & 0x20) == 0) {
        self.contextSobjectType__v = [self string:@"contextSobjectType"];
        fields__set[0] |= 0x20; 
    }
    return self.contextSobjectType__v;
}
        

-(void)setContextSobjectType:(NSString *)v {
    self.contextSobjectType__v = v;
    fields__set[0] |= 0x20; 
}
        

-(NSArray *)defaultValues {
    if ((fields__set[0] & 0x40) == 0) {
        self.defaultValues__v = [self complexTypeArrayFromElements:@"defaultValues" cls:[ZKDescribeQuickActionDefaultValue class]];
        fields__set[0] |= 0x40; 
    }
    return self.defaultValues__v;
}
        

-(void)setDefaultValues:(NSArray *)v {
    self.defaultValues__v = v;
    fields__set[0] |= 0x40; 
}
        

-(NSString *)flowDevName {
    if ((fields__set[0] & 0x80) == 0) {
        self.flowDevName__v = [self string:@"flowDevName"];
        fields__set[0] |= 0x80; 
    }
    return self.flowDevName__v;
}
        

-(void)setFlowDevName:(NSString *)v {
    self.flowDevName__v = v;
    fields__set[0] |= 0x80; 
}
        

-(NSString *)flowRecordIdVar {
    if ((fields__set[0] & 0x100) == 0) {
        self.flowRecordIdVar__v = [self string:@"flowRecordIdVar"];
        fields__set[0] |= 0x100; 
    }
    return self.flowRecordIdVar__v;
}
        

-(void)setFlowRecordIdVar:(NSString *)v {
    self.flowRecordIdVar__v = v;
    fields__set[0] |= 0x100; 
}
        

-(NSInteger)height {
    if ((fields__set[0] & 0x200) == 0) {
        self.height__v = [self integer:@"height"];
        fields__set[0] |= 0x200; 
    }
    return self.height__v;
}
        

-(void)setHeight:(NSInteger)v {
    self.height__v = v;
    fields__set[0] |= 0x200; 
}
        

-(NSString *)iconName {
    if ((fields__set[0] & 0x400) == 0) {
        self.iconName__v = [self string:@"iconName"];
        fields__set[0] |= 0x400; 
    }
    return self.iconName__v;
}
        

-(void)setIconName:(NSString *)v {
    self.iconName__v = v;
    fields__set[0] |= 0x400; 
}
        

-(NSString *)iconUrl {
    if ((fields__set[0] & 0x800) == 0) {
        self.iconUrl__v = [self string:@"iconUrl"];
        fields__set[0] |= 0x800; 
    }
    return self.iconUrl__v;
}
        

-(void)setIconUrl:(NSString *)v {
    self.iconUrl__v = v;
    fields__set[0] |= 0x800; 
}
        

-(NSArray *)icons {
    if ((fields__set[0] & 0x1000) == 0) {
        self.icons__v = [self complexTypeArrayFromElements:@"icons" cls:[ZKDescribeIcon class]];
        fields__set[0] |= 0x1000; 
    }
    return self.icons__v;
}
        

-(void)setIcons:(NSArray *)v {
    self.icons__v = v;
    fields__set[0] |= 0x1000; 
}
        

-(NSString *)label {
    if ((fields__set[0] & 0x2000) == 0) {
        self.label__v = [self string:@"label"];
        fields__set[0] |= 0x2000; 
    }
    return self.label__v;
}
        

-(void)setLabel:(NSString *)v {
    self.label__v = v;
    fields__set[0] |= 0x2000; 
}
        

-(ZKDescribeLayoutSection *)layout {
    if ((fields__set[0] & 0x4000) == 0) {
        self.layout__v = [self complexTypeArrayFromElements:@"layout" cls:[ZKDescribeLayoutSection class]].lastObject;
        fields__set[0] |= 0x4000; 
    }
    return self.layout__v;
}
        

-(void)setLayout:(ZKDescribeLayoutSection *)v {
    self.layout__v = v;
    fields__set[0] |= 0x4000; 
}
        

-(NSString *)lightningComponentBundleId {
    if ((fields__set[0] & 0x8000) == 0) {
        self.lightningComponentBundleId__v = [self string:@"lightningComponentBundleId"];
        fields__set[0] |= 0x8000; 
    }
    return self.lightningComponentBundleId__v;
}
        

-(void)setLightningComponentBundleId:(NSString *)v {
    self.lightningComponentBundleId__v = v;
    fields__set[0] |= 0x8000; 
}
        

-(NSString *)lightningComponentBundleName {
    if ((fields__set[0] & 0x10000) == 0) {
        self.lightningComponentBundleName__v = [self string:@"lightningComponentBundleName"];
        fields__set[0] |= 0x10000; 
    }
    return self.lightningComponentBundleName__v;
}
        

-(void)setLightningComponentBundleName:(NSString *)v {
    self.lightningComponentBundleName__v = v;
    fields__set[0] |= 0x10000; 
}
        

-(NSString *)lightningComponentQualifiedName {
    if ((fields__set[0] & 0x20000) == 0) {
        self.lightningComponentQualifiedName__v = [self string:@"lightningComponentQualifiedName"];
        fields__set[0] |= 0x20000; 
    }
    return self.lightningComponentQualifiedName__v;
}
        

-(void)setLightningComponentQualifiedName:(NSString *)v {
    self.lightningComponentQualifiedName__v = v;
    fields__set[0] |= 0x20000; 
}
        

-(NSString *)lightningWebComponentBundleId {
    if ((fields__set[0] & 0x40000) == 0) {
        self.lightningWebComponentBundleId__v = [self string:@"lightningWebComponentBundleId"];
        fields__set[0] |= 0x40000; 
    }
    return self.lightningWebComponentBundleId__v;
}
        

-(void)setLightningWebComponentBundleId:(NSString *)v {
    self.lightningWebComponentBundleId__v = v;
    fields__set[0] |= 0x40000; 
}
        

-(NSString *)lightningWebComponentBundleName {
    if ((fields__set[0] & 0x80000) == 0) {
        self.lightningWebComponentBundleName__v = [self string:@"lightningWebComponentBundleName"];
        fields__set[0] |= 0x80000; 
    }
    return self.lightningWebComponentBundleName__v;
}
        

-(void)setLightningWebComponentBundleName:(NSString *)v {
    self.lightningWebComponentBundleName__v = v;
    fields__set[0] |= 0x80000; 
}
        

-(NSString *)lightningWebComponentQualifiedName {
    if ((fields__set[0] & 0x100000) == 0) {
        self.lightningWebComponentQualifiedName__v = [self string:@"lightningWebComponentQualifiedName"];
        fields__set[0] |= 0x100000; 
    }
    return self.lightningWebComponentQualifiedName__v;
}
        

-(void)setLightningWebComponentQualifiedName:(NSString *)v {
    self.lightningWebComponentQualifiedName__v = v;
    fields__set[0] |= 0x100000; 
}
        

-(NSString *)miniIconUrl {
    if ((fields__set[0] & 0x200000) == 0) {
        self.miniIconUrl__v = [self string:@"miniIconUrl"];
        fields__set[0] |= 0x200000; 
    }
    return self.miniIconUrl__v;
}
        

-(void)setMiniIconUrl:(NSString *)v {
    self.miniIconUrl__v = v;
    fields__set[0] |= 0x200000; 
}
        

-(NSString *)mobileExtensionId {
    if ((fields__set[0] & 0x400000) == 0) {
        self.mobileExtensionId__v = [self string:@"mobileExtensionId"];
        fields__set[0] |= 0x400000; 
    }
    return self.mobileExtensionId__v;
}
        

-(void)setMobileExtensionId:(NSString *)v {
    self.mobileExtensionId__v = v;
    fields__set[0] |= 0x400000; 
}
        

-(NSString *)name {
    if ((fields__set[0] & 0x800000) == 0) {
        self.name__v = [self string:@"name"];
        fields__set[0] |= 0x800000; 
    }
    return self.name__v;
}
        

-(void)setName:(NSString *)v {
    self.name__v = v;
    fields__set[0] |= 0x800000; 
}
        

-(BOOL)showQuickActionLcHeader {
    if ((fields__set[0] & 0x1000000) == 0) {
        self.showQuickActionLcHeader__v = [self boolean:@"showQuickActionLcHeader"];
        fields__set[0] |= 0x1000000; 
    }
    return self.showQuickActionLcHeader__v;
}
        

-(void)setShowQuickActionLcHeader:(BOOL)v {
    self.showQuickActionLcHeader__v = v;
    fields__set[0] |= 0x1000000; 
}
        

-(BOOL)showQuickActionVfHeader {
    if ((fields__set[0] & 0x2000000) == 0) {
        self.showQuickActionVfHeader__v = [self boolean:@"showQuickActionVfHeader"];
        fields__set[0] |= 0x2000000; 
    }
    return self.showQuickActionVfHeader__v;
}
        

-(void)setShowQuickActionVfHeader:(BOOL)v {
    self.showQuickActionVfHeader__v = v;
    fields__set[0] |= 0x2000000; 
}
        

-(NSString *)targetParentField {
    if ((fields__set[0] & 0x4000000) == 0) {
        self.targetParentField__v = [self string:@"targetParentField"];
        fields__set[0] |= 0x4000000; 
    }
    return self.targetParentField__v;
}
        

-(void)setTargetParentField:(NSString *)v {
    self.targetParentField__v = v;
    fields__set[0] |= 0x4000000; 
}
        

-(NSString *)targetRecordTypeId {
    if ((fields__set[0] & 0x8000000) == 0) {
        self.targetRecordTypeId__v = [self string:@"targetRecordTypeId"];
        fields__set[0] |= 0x8000000; 
    }
    return self.targetRecordTypeId__v;
}
        

-(void)setTargetRecordTypeId:(NSString *)v {
    self.targetRecordTypeId__v = v;
    fields__set[0] |= 0x8000000; 
}
        

-(NSString *)targetSobjectType {
    if ((fields__set[0] & 0x10000000) == 0) {
        self.targetSobjectType__v = [self string:@"targetSobjectType"];
        fields__set[0] |= 0x10000000; 
    }
    return self.targetSobjectType__v;
}
        

-(void)setTargetSobjectType:(NSString *)v {
    self.targetSobjectType__v = v;
    fields__set[0] |= 0x10000000; 
}
        

-(NSString *)type {
    if ((fields__set[0] & 0x20000000) == 0) {
        self.type__v = [self string:@"type"];
        fields__set[0] |= 0x20000000; 
    }
    return self.type__v;
}
        

-(void)setType:(NSString *)v {
    self.type__v = v;
    fields__set[0] |= 0x20000000; 
}
        

-(NSString *)visualforcePageName {
    if ((fields__set[0] & 0x40000000) == 0) {
        self.visualforcePageName__v = [self string:@"visualforcePageName"];
        fields__set[0] |= 0x40000000; 
    }
    return self.visualforcePageName__v;
}
        

-(void)setVisualforcePageName:(NSString *)v {
    self.visualforcePageName__v = v;
    fields__set[0] |= 0x40000000; 
}
        

-(NSString *)visualforcePageUrl {
    if ((fields__set[0] & 0x80000000) == 0) {
        self.visualforcePageUrl__v = [self string:@"visualforcePageUrl"];
        fields__set[0] |= 0x80000000; 
    }
    return self.visualforcePageUrl__v;
}
        

-(void)setVisualforcePageUrl:(NSString *)v {
    self.visualforcePageUrl__v = v;
    fields__set[0] |= 0x80000000; 
}
        

-(NSInteger)width {
    if ((fields__set[0] & 0x100000000) == 0) {
        self.width__v = [self integer:@"width"];
        fields__set[0] |= 0x100000000; 
    }
    return self.width__v;
}
        

-(void)setWidth:(NSInteger)v {
    self.width__v = v;
    fields__set[0] |= 0x100000000; 
}
        
-(void)serializeTo:(ZKXmlWriter *)env elemName:(NSString *)elemName {
	[env startElement:elemName];
	[env addElement:@"accessLevelRequired"                elemValue:self.accessLevelRequired                nillable:YES optional:NO];
	[env addElement:@"actionEnumOrId"                     elemValue:self.actionEnumOrId                     nillable:NO  optional:NO];
	[env addElement:@"canvasApplicationId"                elemValue:self.canvasApplicationId                nillable:YES optional:NO];
	[env addElement:@"canvasApplicationName"              elemValue:self.canvasApplicationName              nillable:YES optional:NO];
	[env addElementArray:@"colors"                        elemValue:self.colors];
	[env addElement:@"contextSobjectType"                 elemValue:self.contextSobjectType                 nillable:YES optional:NO];
	[env addElementArray:@"defaultValues"                 elemValue:self.defaultValues];
	[env addElement:@"flowDevName"                        elemValue:self.flowDevName                        nillable:YES optional:NO];
	[env addElement:@"flowRecordIdVar"                    elemValue:self.flowRecordIdVar                    nillable:YES optional:NO];
	[env addIntElement:@"height"                          elemValue:self.height];
	[env addElement:@"iconName"                           elemValue:self.iconName                           nillable:YES optional:NO];
	[env addElement:@"iconUrl"                            elemValue:self.iconUrl                            nillable:YES optional:NO];
	[env addElementArray:@"icons"                         elemValue:self.icons];
	[env addElement:@"label"                              elemValue:self.label                              nillable:NO  optional:NO];
	[env addElement:@"layout"                             elemValue:self.layout                             nillable:YES optional:NO];
	[env addElement:@"lightningComponentBundleId"         elemValue:self.lightningComponentBundleId         nillable:YES optional:NO];
	[env addElement:@"lightningComponentBundleName"       elemValue:self.lightningComponentBundleName       nillable:YES optional:NO];
	[env addElement:@"lightningComponentQualifiedName"    elemValue:self.lightningComponentQualifiedName    nillable:YES optional:NO];
	[env addElement:@"lightningWebComponentBundleId"      elemValue:self.lightningWebComponentBundleId      nillable:YES optional:NO];
	[env addElement:@"lightningWebComponentBundleName"    elemValue:self.lightningWebComponentBundleName    nillable:YES optional:NO];
	[env addElement:@"lightningWebComponentQualifiedName" elemValue:self.lightningWebComponentQualifiedName nillable:YES optional:NO];
	[env addElement:@"miniIconUrl"                        elemValue:self.miniIconUrl                        nillable:YES optional:NO];
	[env addElement:@"mobileExtensionId"                  elemValue:self.mobileExtensionId                  nillable:YES optional:NO];
	[env addElement:@"name"                               elemValue:self.name                               nillable:NO  optional:NO];
	[env addBoolElement:@"showQuickActionLcHeader"        elemValue:self.showQuickActionLcHeader];
	[env addBoolElement:@"showQuickActionVfHeader"        elemValue:self.showQuickActionVfHeader];
	[env addElement:@"targetParentField"                  elemValue:self.targetParentField                  nillable:YES optional:NO];
	[env addElement:@"targetRecordTypeId"                 elemValue:self.targetRecordTypeId                 nillable:YES optional:NO];
	[env addElement:@"targetSobjectType"                  elemValue:self.targetSobjectType                  nillable:YES optional:NO];
	[env addElement:@"type"                               elemValue:self.type                               nillable:NO  optional:NO];
	[env addElement:@"visualforcePageName"                elemValue:self.visualforcePageName                nillable:YES optional:NO];
	[env addElement:@"visualforcePageUrl"                 elemValue:self.visualforcePageUrl                 nillable:YES optional:NO];
	[env addIntElement:@"width"                           elemValue:self.width];
	[env endElement:elemName];
}
@end
