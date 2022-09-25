//
//  AccessibilityNotifierApiImpl.swift
//  accessibility_notifier
//
//  Created by Tom Grushka on 9/25/22.
//

import Flutter
import UIKit

class AccessibilityNotifierApiImpl : NSObject, AccessibilityNotifierApi {
    func post(type: AccessibilityPostType, id: String?) -> Bool {
        print("POST type = \(type), id = \(id)")
        return true
    }
}
