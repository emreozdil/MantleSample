//
//  FlagsModel.swift
//  MantleSample
//
//  Created by Emre Özdil on 24/08/2017.
//  Copyright © 2017 Emre Özdil. All rights reserved.
//

import Foundation


class FlagsModel: BaseModel {
    var sources : NSArray?
    var isdStations : NSArray?
    var units : String?
    
    override static func jsonKeyPathsByPropertyKey() -> [AnyHashable : Any]! {
        return ["isdStations": "isd-stations"]
    }
}
