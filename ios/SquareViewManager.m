//
//  SquareViewManager.m
//  ReactNativeReader
//
//  Created by Kevin Amiranoff on 11/06/2018.
//  Copyright © 2018 Facebook. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SquareView.h"
#import "SquareViewManager.h"

#if __has_include(<React/RCTBridge.h>)
#import <React/RCTBridge.h>
#elif __has_include("RCTBridge.h")
#import "RCTBridge.h"
#else
#import "React/RCTBridge.h" //Required when used as a Pod in a Swift project
#endif


@implementation SquareViewManager

@synthesize bridge = _bridge;

// Export Native Module
RCT_EXPORT_MODULE(Square);

-(UIView *) view {
  return [[SquareView alloc] initWithEventDispatcher:self.bridge.eventDispatcher];
}

// Export props
RCT_EXPORT_VIEW_PROPERTY(text, NSString);

// Export constants
-(NSDictionary *)constantsToExport {
  return @{
           @"SQUARE_CONSTANT": @"square_constant"
           };
}
@end
