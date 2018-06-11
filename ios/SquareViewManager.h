//
//  SquareViewManager.h
//  ReactNativeReader
//
//  Created by Kevin Amiranoff on 11/06/2018.
//  Copyright © 2018 Facebook. All rights reserved.
//
#if __has_include(<React/RCTViewManager.h>)
#import <React/RCTViewManager.h>
#elif __has_include("RCTViewManager.h")
#import "RCTViewManager.h"
#else
#import "React/RCTViewManager.h" //Required when used as a Pod in a Swift project
#endif

@interface SquareViewManager : RCTViewManager

@end
