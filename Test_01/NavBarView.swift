//
//  NavBar.swift
//  Test_01
//
//  Created by Frederic Horsch on 01.09.20.
//

import SwiftUI

struct NavBarView:View {
    var body: some View {
        TabView {
            ListView()
            .tabItem {
                Image(systemName: "list.bullet")
                Text("List")
            }
            CalculatorView()
            .tabItem {
                Image(systemName: "plus.slash.minus")
                Text("Calc")
            }
        }
    }
}
