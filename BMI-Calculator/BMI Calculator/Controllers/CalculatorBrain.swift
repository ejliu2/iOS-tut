//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Eric Liu on 2021-01-27.
//  Copyright © 2021 Angela Yu. All rights reserved.
//

import UIKit

struct CalculatorBrain {
    var bmi: BMI?
    
    mutating func calculateBMI(height: Float, weight: Float) {
        let thisBMI = weight / pow(height, 2)

        if thisBMI < 18.5 {
            self.bmi = BMI(value: thisBMI, advice: "Eat more pies!", color: #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1))
        } else if thisBMI < 24.9 {
            self.bmi = BMI(value: thisBMI, advice: "Fit as a fiddle!", color: #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1))
        } else {
            self.bmi = BMI(value: thisBMI, advice: "Eat less pies", color: #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1))
        }
    }
    
    func getBMIValue() -> String {
        return String(format: "%0.2f", bmi?.value ?? 0.0)
    }
    
    func getBMIAdvice() -> String {
        return bmi?.advice ?? "No advice"
    }
    
    func getBMIColor() -> UIColor {
        return bmi?.color ?? #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
    }
}
