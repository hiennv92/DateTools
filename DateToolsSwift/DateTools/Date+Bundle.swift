//
//  Date+Bundle.swift
//  DateTools
//
//  Created by Matthew York on 8/26/16.
//  Copyright © 2016 Matthew York. All rights reserved.
//

import Foundation

var dateToolsBundleLocalize: String?

public extension Bundle {

    public class func setDateToolsBundleLocalize(_ localize: String?) {
        dateToolsBundleLocalize = localize
    }
  
  class func dateToolsBundle() -> Bundle {
    let assetPath = Bundle(for: Constants.self).resourcePath!
    let bundle = Bundle(path: NSString(string: assetPath).appendingPathComponent("DateTools.bundle"))!
    if let localize = dateToolsBundleLocalize, let path = bundle.path(forResource: localize, ofType: "lproj") {
        return Bundle(path: path) ?? bundle
    }
    return bundle
  }

}

