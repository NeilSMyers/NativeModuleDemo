//
//  PogChamp.m
//  NativeModulesDemo
//
//  Created by Myers, Neil on 3/28/22.
//

#import "React/RCTBridgeModule.h"

@interface RCT_EXTERN_MODULE(PogChamp, NSObject)

RCT_EXTERN_METHOD(pogMethod)
RCT_EXTERN_METHOD(getPog: (RCTResponseSenderBlock)callback)

@end
