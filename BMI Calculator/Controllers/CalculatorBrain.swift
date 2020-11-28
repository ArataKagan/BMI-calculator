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
        let bmiValueDecimal1 = String(format:"%.1f", bmi?.value ?? 0.0)
        let bmiAdvice = bmi?.advice
        return bmiValueDecimal1
    
    }
    
    mutating func calculateBMI(height: Float, weight: Float){
        let bmiValue = weight/pow(height,2)
        var bmiAdvice:String?
       
        if bmiValue < 18.5 {
            print("\(bmiValue) underweight")
            bmiAdvice = "Underweight"
          
        } else if bmiValue > 18.5 && bmiValue < 24.9 {
            print("\(bmiValue) normal")
            bmiAdvice = "normal"
            
        } else {
            print("\(bmiValue) overweight")
            bmiAdvice = "overweight"
            
        }
        bmi = BMI(value: bmiValue, advice: bmiAdvice!, color: UIColor.red)
    }
    
   
}

