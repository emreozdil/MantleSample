//
//  BaseModel.swift
//  MantleSample
//
//  Created by Emre Özdil on 24/08/2017.
//  Copyright © 2017 Emre Özdil. All rights reserved.
//

import Mantle

class BaseModel: MTLModel, MTLJSONSerializing {
    override init() {
        super.init()
    }
    
    override init(dictionary dictionaryValue: [AnyHashable : Any]!, error: ()) throws {
        try super.init(dictionary: dictionaryValue, error: ())
    }
    
    required init!(coder: NSCoder!) {
        super.init(coder: NSCoder())
    }
    
    class func jsonKeyPathsByPropertyKey() -> [AnyHashable: Any]!
    {
        return [:]
    }
}

extension BaseModel {
    
    func toDictionary() -> NSDictionary? {
        let dict = MTLJSONAdapter.jsonDictionary(from: self)
        return dict! as NSDictionary
    }
    
    func toData() -> Data? {
        let dict = self.toDictionary()
        let data = try? JSONSerialization.data(withJSONObject: dict!, options: JSONSerialization.WritingOptions.prettyPrinted)
        return data
    }
    
    func toString() -> NSString {
        let data = self.toData()
        let str = NSString(data: data!, encoding: String.Encoding.utf8.rawValue)
        return str!
    }
}
