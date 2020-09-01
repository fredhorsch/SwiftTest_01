//
//  CalculatorView.swift
//  Test_01
//
//  Created by Frederic Horsch on 01.09.20.
//

import SwiftUI

struct CalculatorView: View {
    
    @State var calcNumbers = ""
    
    var body: some View {
        
        VStack {
            
            Text(calcNumbers)
            
            HStack {
                ButtonDesign(number: 1, calcNum: $calcNumbers)
                ButtonDesign(number: 2, calcNum: $calcNumbers)
                ButtonDesign(number: 3, calcNum: $calcNumbers)
            }
            
            HStack {
                ButtonDesign(number: 4, calcNum: $calcNumbers)
                ButtonDesign(number: 5, calcNum: $calcNumbers)
                ButtonDesign(number: 6, calcNum: $calcNumbers)
            }
            
            HStack {
                ButtonDesign(number: 7, calcNum: $calcNumbers)
                ButtonDesign(number: 8, calcNum: $calcNumbers)
                ButtonDesign(number: 9, calcNum: $calcNumbers)
            }
        }
    }
    
}

struct ButtonDesign: View {
    var number:Int
    
    @Binding var calcNum: String
    
    var body: some View {
        
        Button("\(number)") {
            calcNum = calcNum + "\(number)"
        }.font(.largeTitle).padding(20)
        
    }
    
}
