//
//  ResultsView.swift
//  Lab2-27
//
//  Created by CampusUser on 3/13/17.
//  Copyright © 2017 Alexander Edgar. All rights reserved.
//

import UIKit

class ResultsView : UIView {
    override func draw(_ rect: CGRect) {
        let screenSize = UIScreen.main.bounds
        let width = screenSize.width
        let height = screenSize.height
        let model = CalculatorModel.shared
        if let context = UIGraphicsGetCurrentContext() {
            //Draw the colored rectangles
            context.beginPath()
            context.setFillColor(red: 0.0, green: 0.3, blue: 0.3, alpha: 1.0)
            context.addRect(CGRect(x:0, y:0, width:width, height:height/3))
            context.fillPath()
            context.beginPath()
            context.setFillColor(red: 0.3, green: 0.1, blue: 0.1, alpha: 1.0)
            context.addRect(CGRect(x:0, y:height/3, width:width/2, height:height-height/3))
            context.fillPath()
            context.beginPath()
            context.setFillColor(red: 0.1, green:0.3, blue: 0.1, alpha: 1.0)
            context.addRect(CGRect(x:width/2, y:height/3, width:width-width/2, height:height-height/3))
            context.fillPath()
            //Print the result texts
            let textAttributes = [
                NSFontAttributeName: UIFont(name: "Helvetica Bold", size: 16.0)!,
                NSForegroundColorAttributeName: UIColor(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
            ]
            var text = "Original Price:"
            text.draw(at: CGPoint(x: 5, y: 66), withAttributes: textAttributes)
            text = "$" + String(model.originalPrice)
            text.draw(at: CGPoint(x: 5, y: 66 + 16), withAttributes: textAttributes)
            text = "You Pay"
            text.draw(at: CGPoint(x:5, y: 2 + height/3), withAttributes: textAttributes)
            text = "$" + String(model.discountPrice)
            text.draw(at: CGPoint(x: 5, y: 18 + height/3), withAttributes: textAttributes)
            text = "You Saved"
            text.draw(at: CGPoint(x: 5 + width-width/2, y: 2 + height/3), withAttributes: textAttributes)
            text = "$" + String(model.originalPrice - model.discountPrice)
            text.draw(at: CGPoint(x: 5 + width-width/2, y: 18 + height/3), withAttributes: textAttributes)
            text = String(100 - (model.discountPrice/model.originalPrice)*100) + "%"
            text.draw(at: CGPoint(x: 5 + width-width/2, y: 34 + height/3), withAttributes: textAttributes)
        }
    }
}
