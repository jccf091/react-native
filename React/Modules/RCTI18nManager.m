/**
 * Copyright (c) 2015-present, Facebook, Inc.
 * All rights reserved.
 *
 * This source code is licensed under the BSD-style license found in the
 * LICENSE file in the root directory of this source tree. An additional grant
 * of patent rights can be found in the PATENTS file in the same directory.
 */

#import "RCTI18nManager.h"
#import "RCTI18nUtil.h"

@implementation RCTI18nManager

RCT_EXPORT_MODULE()

+ (BOOL)requiresMainQueueSetup
{
  return NO;
}

RCT_EXPORT_METHOD(allowRTL:(BOOL)value)
{
  [[RCTI18nUtil sharedInstance] allowRTL:value];
}

RCT_EXPORT_METHOD(forceRTL:(BOOL)value)
{
  [[RCTI18nUtil sharedInstance] forceRTL:value];
}

RCT_EXPORT_METHOD(makeRTLFlipLeftAndRightStyles:(BOOL)value)
{
  [[RCTI18nUtil sharedInstance] makeRTLFlipLeftAndRightStyles:value];
}

- (NSDictionary *)constantsToExport
{
  return @{
    @"isRTL": @([[RCTI18nUtil sharedInstance] isRTL]),
    @"doesRTLFlipLeftAndRightStyles": @([[RCTI18nUtil sharedInstance] doesRTLFlipLeftAndRightStyles])
  };
}

@end
