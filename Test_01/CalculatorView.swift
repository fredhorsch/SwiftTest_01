//
//  CalculatorView.swift
//  Test_01
//
//  Created by Frederic Horsch on 01.09.20.
//

import SwiftUI

struct CalculatorView: View {
    
    @State var calcNumbers = ""
    @State var resultCalc = ""
    
    var body: some View {
        
        VStack {
            
            HStack {
                Text(calcNumbers)
                Text(resultCalc)
            }
            
            HStack {
                ButtonDesign(number: "1", calcNum: $calcNumbers, resultNum: $resultCalc)
                ButtonDesign(number: "2", calcNum: $calcNumbers, resultNum: $resultCalc)
                ButtonDesign(number: "3", calcNum: $calcNumbers, resultNum: $resultCalc)
                ButtonDesign(number: "/", calcNum: $calcNumbers, resultNum: $resultCalc)
            }
            
            HStack {
                ButtonDesign(number: "4", calcNum: $calcNumbers, resultNum: $resultCalc)
                ButtonDesign(number: "5", calcNum: $calcNumbers, resultNum: $resultCalc)
                ButtonDesign(number: "6", calcNum: $calcNumbers, resultNum: $resultCalc)
                ButtonDesign(number: "*", calcNum: $calcNumbers, resultNum: $resultCalc)
            }
            
            HStack {
                ButtonDesign(number: "7", calcNum: $calcNumbers, resultNum: $resultCalc)
                ButtonDesign(number: "8", calcNum: $calcNumbers, resultNum: $resultCalc)
                ButtonDesign(number: "9", calcNum: $calcNumbers, resultNum: $resultCalc)
                ButtonDesign(number: "-", calcNum: $calcNumbers, resultNum: $resultCalc)
            }
            
            HStack {
                ButtonDesign(number: "0", calcNum: $calcNumbers, resultNum: $resultCalc)
                ButtonDesign(number: "c", calcNum: $calcNumbers, resultNum: $resultCalc)
                ButtonDesign(number: "=", calcNum: $calcNumbers, resultNum: $resultCalc)
                ButtonDesign(number: "+", calcNum: $calcNumbers, resultNum: $resultCalc)
            }
        }
    }
    
}

struct ButtonDesign: View {
    var number:String
    
    @Binding var calcNum: String
    @Binding var resultNum: String
    
    var body: some View {
        
        Button("\(number)") {
            if number == "=" {
                
                let expression = NSExpression(format: calcNum)
                let newExpression = expression.expressionValue(with: nil, context: nil)
                let textExpression = newExpression as! NSNumber
                resultNum = "\(textExpression)"
            } else if number == "c" {
                calcNum = ""
                resultNum = ""
            } else {
                calcNum = calcNum + "\(number)"
            }
        }.font(.largeTitle).frame(width: 55, height: 60)
        
    }
    
}
