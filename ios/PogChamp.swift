//
//  PogChamp.swift
//  NativeModulesDemo
//
//  Created by Myers, Neil on 3/28/22.
//

import Foundation

@objc(PogChamp)
class PogChamp: NSObject {
  
  @objc
  static func requiresMainQueueSetup() -> Bool {
    return true
  }
  
  @objc
  func constantsToExport() -> [AnyHashable : Any]! {
    // this method works automatically, but only with static data
    return ["deviceName": UIDevice.current.name]
  }
  
  // any function you write that you want to call in JS must be 'externed' in the obj-c file
  
  // these functions CANNOT return data to JS, they just interact with data on the native side
  @objc
  func pogMethod() {
    print("Perhaps the archives are incomplete.")
  }
  
  // a callback can be called by and return data to JS
  // you MUST pass and array to your callback
  @objc
  func getPog(_ callback: RCTResponseSenderBlock) {
    callback(["I don't like sand, it's course and rough and irritating, and it gets everywhere, just like native modules."])
  }
}
