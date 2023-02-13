//
//  ContentView.swift
//  Pizzaapp
//
//  Created by Mihwa Kim on 13/2/2023.
//

import SwiftUI
 
struct ContentView: View {
    @State private var isUppercase = false
    @State private var isReversed = false
    @State private var isneither = false
    @State private var quantityExampleOne: Int = 0
    var body: some View {
        VStack {
                    VStack {
                            VStack {
                                        Text("Pizza🍕")
                                            }
                                            .padding()
                    }
            VStack{
                Toggle("Include Tomato",isOn: $isUppercase)
                Toggle("Include Mozzarella", isOn: $isReversed)
                Toggle("Include Pineapple",isOn: $isneither)
            }
            VStack{
            Stepper("Quantity: \(quantityExampleOne)",value: $quantityExampleOne, in: 0...20, step:  1)
                }
            
            Button("Order") {
                /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
