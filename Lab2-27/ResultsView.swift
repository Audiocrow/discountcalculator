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
            //Print the result text if it exists
            let textAttributes = [
                NSFontAttributeName: UIFont(name: "Helvetica Bold", size: 16.0)!,
                NSForegroundColorAttributeName: UIColor(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
            ]
            let text = "Test text"
            text.draw(at: CGPoint(x: 0, y: 64), withAttributes: textAttributes)

        }
    }
}
