//
//  CalculatorModel.swift
//  Lab2-27
//
//  Created by CampusUser on 2/27/17.
//  Copyright © 2017 Alexander Edgar. All rights reserved.
//

import Foundation

class CalculatorModel {
    static let shared = CalculatorModel()
    //MARK: Properties
    var price: Int
    var amtOff: Int
    var discount: Float
    var otherDiscount: Float
    var tax: Float
    //MARK: Dynamic Properties
    public var originalPrice: Float {
        get {
            return Float(price) + Float(price)*(tax/100.0)
        }
    }
    public var discountPrice: Float {
        get {
            let pretax: Float = Float(price - amtOff) * (1.0 - (discount + otherDiscount)/100.0)
            return pretax + pretax*(tax/100.0)
        }
    }
    //MARK: Methods
    private init(price:Int=0, amtOff:Int=0, discount:Float=0, discount2:Float=0, tax:Float=0) {
        self.price = price
        self.amtOff = amtOff
        self.discount = discount
        self.otherDiscount = discount2
        self.tax = tax
    }
}
