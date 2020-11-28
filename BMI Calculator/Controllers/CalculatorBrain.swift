//
//  BmiBrain.swift
//  BMI Calculator
//
//  Created by Arata Kagan on 11/26/20.
//  Copyright © 2020 Angela Yu. All rights reserved.
//
import UIKit

struct CalculatorBrain {
    var bmi: BMI?
    
    func getBmiValue() -> String {
        let bmiValue = String(format:"%.1f", bmi?.value ?? 0.0)
    
        return bmiValue
    }
    
    func getBmiAdvice() -> String {
        return bmi!.advice
    }
    
    func getBmiColor() -> UIColor {
        return bmi!.color
    }
    
    mutating func calculateBMI(height: Float, weight: Float){
        let bmiValue = weight/pow(height,2)
    
        if bmiValue < 18.5 {
            print("\(bmiValue) underweight")
            bmi = BMI(value: bmiValue, advice: "Eat more rice", color: #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1))
          
        } else if bmiValue < 24.9 {
            print("\(bmiValue) normal")
            bmi = BMI(value: bmiValue, advice: "Stay where you are", color: #colorLiteral(red: 0.9764705896, green: 0.850980401, blue: 0.5490196347, alpha: 1))
            
        } else {
            print("\(bmiValue) overweight")
            bmi = BMI(value: bmiValue, advice: "Eat less rice", color: #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1))
        }
        
    }
    
   
}

