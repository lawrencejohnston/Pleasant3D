//
//  P3DUltimakerMachineDriver.m
//  P3DCore
//
//  Created by Lawrence Johnston on 2/4/12.
//  Copyright (c) 2012 Pleasant Software. All rights reserved.
//

#import "P3DUltimaker.h"

#import "Vector3.h"

@implementation P3DUltimaker

+ (NSString*)driverIdentifier
{
	return @"pleasantmill";
}

+ (Class)deviceDriverClass;
{
	return [self class]; // TODO: This isn't right, just to return a non-nil value
}

+ (NSString*)driverName
{
	return NSLocalizedStringFromTableInBundle(@"Ultimaker", nil, [NSBundle bundleForClass:[self class]], @"Localized Display Name for Driver");
}

+ (NSString*)defaultMachineName;
{
	return NSLocalizedStringFromTableInBundle(@"Ultimaker", nil, [NSBundle bundleForClass:[self class]], @"Localized Display Name for Default Machine this driver is for");
}

+ (NSString*)driverVersionString
{
	return [[[NSBundle bundleForClass:[self class]] infoDictionary] objectForKey:@"CFBundleShortVersionString"];
}

+ (NSString*)driverImagePath
{
	return nil;
}

+ (NSString*)driverManufacturer
{
	return @"Ultimaking Ltd.";
}

- (Vector3 *)dimBuildPlattform {
  static Vector3* _dimBuildPlatform=nil;
  if(_dimBuildPlatform==nil)
    _dimBuildPlatform = [[Vector3 alloc] initVectorWithX:210. Y:210. Z:0.];
  return _dimBuildPlatform;
}

- (Vector3 *)zeroBuildPlattform {
  static Vector3* _zeroBuildPlattform=nil;
  if(_zeroBuildPlattform==nil)
    _zeroBuildPlattform = [[Vector3 alloc] initVectorWithX:0. Y:0. Z:0.];
  return _zeroBuildPlattform;
}

@end
