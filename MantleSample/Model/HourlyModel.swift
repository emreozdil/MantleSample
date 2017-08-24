//
//  HourlyModel.swift
//  MantleSample
//
//  Created by Emre Özdil on 24/08/2017.
//  Copyright © 2017 Emre Özdil. All rights reserved.
//

import Foundation

class HourlyModel: BaseModel {
    var summary : String?
    var icon : String?
    var data : NSArray?
    
    class func dataJSONTransformer() -> ValueTransformer {
        return ValueTransformer.mtl_JSONArrayTransformer(withModelClass: DataModel.self)
    }
    
}
