# zkSforce README

zkSforce is a cocoa library for calling the [Salesforce.com Web Services APIs](http://www.salesforce.com/us/developer/docs/api/index.htm), easily integrate Salesforce into your OSX and iOS projects. (supports OSX 10.5 and up, and iOS 3.2 and up)

zkSforce supports all the popular methods in the partner web services API

 * login, getUserInfo, serverTimestamp, setPassword
 * describeGlobal, describeSObject, describeLayout, describeTabs
 * create, update, delete, convertLead
 * search, query, queryAll, queryMore, retrieve
 * OAuth support for refresh tokens

The following methods are not currently supported

 * describeSObjects
 * upsert, undelete, merge
 * getDeleted & getUpdated
 * process


In general the client acts just like the Web Services API, however in a few places it has some smarts to make your life easier.

 * it'll track the duration of the session and re-login as required, so just keep calling methods as needed and don't worry about the session expiring away from under you.
 * in ZKDescribeSObject there's a helper method to get the ZKDescribeField given the fields name.
 * In ZKSObject the fieldsToNull collection is managed for you, if you add a field to the fieldsToNull collection (via setFieldToNull) it'll automatically remove any field value, also you can just set the field value directly to nil (aka null) in setFieldValue:field: and it'll automatically translate that into a fieldsToNull call for you.
 * ZKQueryResult implements the NSTableView informal data source interface, so you can easily show a queries results in a table view (just like SoqlX does)
 * You can ask the ZKSforceClient object to automatically cache describe results for you by calling setCacheDescribes


Usage is really straight forward, create an instance of the [ZKSforceClient](https://github.com/superfell/zkSforce/blob/master/zkSforce/zkSforceClient.h) class, call login, then call the other operations as needed, e.g.

Login and find the URL to the new Task UI Page.

        ZKSforceClient *sforce = [[ZKSforceClient alloc] init];
        [sforce login:username password:password];
        ZKDescribeSObject *taskDescribe = [sforce describeSObject:@"Task"];
        NSLog(@"url for the new Task page is %@", [taskDescribe urlNew]);	
        [sforce release];


Login and create a new contact for Simon Fell, and check the result

        ZKSforceClient *sforce = [[ZKSforceClient alloc] init];
        [sforce login:username password:password];
        ZKSObject *contact = [ZKSObject withType:@"Contact"];
        [contact setFieldValue:@"Fell" field:@"LastName"];
        [contact setFieldValue:@"Simon" field:@"FirstName"];
        NSArray *results = [sforce create:[NSArray arrayWithObject:contact]];
        ZKSaveResult *sr = [results objectAtIndex:0];
        if ([sr success])
	        NSLog(@"new contact id %@", [sr id]);
        else
	        NSLog(@"error creating contact %@ %@", [sr statusCode], [sr message]);
        [sforce release];

Calls are made synchronously on the thread making the call (and therefore you shouldn't really call it directly from the UI thread), zkSforceClient+zkAsyncQuery.h has a bunch of
helper method that let you make asynchronous calls and to have a block run on completion of call.


As well as the traditional username and password login, there's also support for working with OAuth based authentication, you can pass it the finalized callbackURL you receive at the end of the oauth login flow, and it'll automatically extract all the parameters it needs from that URL.

		ZKSforceClient *sforce = [[ZKSforceClient alloc] init];
		[sforce loginFromOAuthCallbackUrl:callbackUrl oAuthConsumerKey:OAUTH_CLIENTID];
		// use as normal


You'll need to store the refresh_token and authHost somewhere safe, like the keychain, then when you restart, you can pass these to ZKSforceClient to initialize it, it'll automatically use the refresh token service to get a new sessionId.

	ZKSforceClient *sforce = [[ZKSforceClient alloc] init];
	[sforce loginWithRefreshToken:refreshToken authUrl:authHost oAuthConsumerKey:OAUTH_CLIENTID];
	// use as normal
	// See the OAuthDemo sample for more info.
	

## Major Update
vXXXXX is a major update where a significant amount of the code is now code-generated from the partner WSDL, because of this there are a number of API changes that might affect an existing project that you're trying to update to this version of zkSforce.

 * some files have had the casing of their filename fixed to match the classname (e.g. zkChildRelationship.h is now ZKChildRelationship.h)
 * The Id property on ZKDescribeLayout is now called id
 * 


## Project setup (via CocoaPods)

The easiest way to get ZKSforce integrated into your app is to use [CocoaPods](http://cocoapods.org/), the new Cocoa dependency manager framework, simply create a dependency file, e.g.

    platform :osx
	dependency 'ZKSforce', '~> 25.0.2'
	
and run  `pod install myApp.xcodeproj`


## Project setup (manual)

In order to support usage on both OSX & iPhone OS (so iPhone, iPod Touch, iPad), the library now uses libxml as its XML parser rather than NSXML, which isn't fully implemented on iPhone OS. Once you've added all the .h & .m files to your project, you'll need to goto the build settings and add /usr/include/libxml2 to the Header Search Paths, and add libxml2.dylib to the linked frameworks section, and then you should be good to go. The [Wiki](https://github.com/superfell/zkSforce/wiki/Creating-a-new-project-that-uses-zkSforce) has a detailed write up on  these steps.