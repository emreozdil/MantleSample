//
//  ViewController.swift
//  MantleSample
//
//  Created by Emre Özdil on 23/08/2017.
//  Copyright © 2017 Emre Özdil. All rights reserved.
//

import UIKit
import Mantle
import Alamofire

// https://darksky.net/dev current API

// This is sample json
let api = "https://web.itu.edu.tr/ozdile/weather-model.json"

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        fetchData()
    }


    func fetchData() {
        Alamofire.request(api).responseJSON(completionHandler: { (response) in
            if let jsonDictionary = response.result.value as? [AnyHashable: Any] {
                let model: WeatherModel = try! MTLJSONAdapter.model(of: WeatherModel.self, fromJSONDictionary: jsonDictionary) as! WeatherModel
                let modelString = model.toString()
                print(modelString)
            }
        })
    }
    
}

