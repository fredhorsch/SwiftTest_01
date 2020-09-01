//
//  ContentView.swift
//  Test_01
//
//  Created by Frederic Horsch on 31.08.20.
//

import SwiftUI
import Combine

struct Item: Identifiable {
    let id = UUID()
    var name:String
}

struct ListView: View {
    
    @State var showModal = false
    @State var textName = ""
    @State var listItems:[Item] = []
    
    var body: some View {
        NavigationView {
            List(listItems) { item in
                Text("\(item.name)")
            }
            .sheet(isPresented: $showModal) {
                VStack {
                    TextField("Name:", text: $textName)
                    Button("Speichern") {
                        listItems.append(Item(name: textName))
                        textName = ""
                        showModal.toggle()
                    }
                }
            }
            .navigationTitle("Text")
            .navigationBarItems(trailing:
                Button(action: {
                    showModal.toggle()
                }, label: {
                    Image(systemName: "plus.circle").font(.largeTitle)
                })
            )
        }
        
    }
}
