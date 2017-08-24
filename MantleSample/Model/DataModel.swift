//
//  DataModel.swift
//  MantleSample
//
//  Created by Emre Özdil on 24/08/2017.
//  Copyright © 2017 Emre Özdil. All rights reserved.
//

class DataModel: BaseModel {
    var time :  Int = 0
    var summary : String?
    var icon : String?
    var sunriseTime :  Int = 0
    var sunsetTime :  Int = 0
    var moonPhase :  Double = 0.0
    var precipIntensity :  Double = 0.0
    var precipIntensityMax :  Double = 0.0
    var precipIntensityMaxTime :  Int = 0
    var precipProbability :  Double = 0.0
    var precipType : String?
    var temperatureMin :  Double = 0.0
    var temperatureMinTime :  Int = 0
    var temperatureMax :  Double = 0.0
    var temperatureMaxTime :  Int = 0
    var apparentTemperatureMin :  Double = 0.0
    var apparentTemperatureMinTime :  Int = 0
    var apparentTemperatureMax :  Double = 0.0
    var apparentTemperatureMaxTime :  Int = 0
    var dewPoint :  Double = 0.0
    var humidity :  Double = 0.0
    var windSpeed :  Double = 0.0
    var windGust :  Double = 0.0
    var windGustTime :  Int = 0
    var windBearing :  Int = 0
    var cloudCover :  Double = 0.0
    var pressure :  Double = 0.0
    var ozone :  Double = 0.0
    var uvIndex :  Int = 0
    var uvIndexTime :  Int = 0
}
