//
//  WeatherModel.swift
//  MantleSample
//
//  Created by Emre Özdil on 24/08/2017.
//  Copyright © 2017 Emre Özdil. All rights reserved.
//

import Foundation

class WeatherModel: BaseModel {
    
    var latitude : Double = 0.0
    var longitude : Double = 0.0
    var timezone : String?
    var offset : Int = 0
    var currently : CurrentlyModel?
    var hourly : HourlyModel?
    var daily : DailyModel?
    var flags : FlagsModel?
    
    
    class func currentlyJSONTransformer() -> ValueTransformer {
        return ValueTransformer.mtl_JSONDictionaryTransformer(withModelClass: CurrentlyModel.self)
    }
    class func hourlyJSONTransformer() -> ValueTransformer {
        return ValueTransformer.mtl_JSONDictionaryTransformer(withModelClass: HourlyModel.self)
    }
    class func dailyJSONTransformer() -> ValueTransformer {
        return ValueTransformer.mtl_JSONDictionaryTransformer(withModelClass: DailyModel.self)
    }
    class func flagsJSONTransformer() -> ValueTransformer {
        return ValueTransformer.mtl_JSONDictionaryTransformer(withModelClass: FlagsModel.self)
    }
}
