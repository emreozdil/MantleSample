//
//  CurrentlyModel.swift
//  MantleSample
//
//  Created by Emre Özdil on 24/08/2017.
//  Copyright © 2017 Emre Özdil. All rights reserved.
//

class CurrentlyModel: BaseModel {
    var time : Int = 0
    var summary : String?
    var icon : String?
    var precipIntensity : Double = 0.0
    var precipProbability : Double = 0.0
    var precipType : String?
    var temperature : Double = 0.0
    var apparentTemperature : Double = 0.0
    var dewPoint : Double = 0.0
    var humidity : Double = 0.0
    var windSpeed : Double = 0.0
    var windGust : Double = 0.0
    var windBearing : Int = 0
    var cloudCover : Int = 0
    var pressure : Double = 0.0
    var ozone : Double = 0.0
    var uvIndex : Int = 0
}
