//
//  Functions.swift
//  PasscodeLock
//
//  Created by Yanko Dimitrov on 8/28/15.
//  Copyright © 2015 Yanko Dimitrov. All rights reserved.
//

import Foundation

func localizedStringFor(key: String, comment: String) -> String {
    
    let name = "PasscodeLock"
    let defaultString = NSLocalizedString(key, tableName: name, bundle: NSBundle(forClass: PasscodeLock.self), comment: comment)
    
    return NSLocalizedString(key, value: defaultString, tableName: name, bundle: NSBundle.mainBundle(), comment: comment)
}

func bundleForResource(name: String, ofType type: String) -> NSBundle {
    
    if(NSBundle.mainBundle().pathForResource(name, ofType: type) != nil) {
        return NSBundle.mainBundle()
    }
    
    return NSBundle(forClass: PasscodeLock.self)
}
