 //
//  ContentView.swift
//  WeSplit
//
//  Created by Punct Daniel on 15.04.2024.
//

import SwiftUI

struct ContentView: View {
    @State private var checkAmount = 0.0
    @State private var numberOfPeople = 0
    @State private var tipPercentage = 20
    @FocusState private var amountIsFocused: Bool
    
    let tipPercentages = [10, 15, 20, 0]
    
    var totalPerPerson: Double{
        //calculate total here
        let peopleCount = Double(numberOfPeople + 2)
        let tipSelection = Double(tipPercentage)
        
       let tipValue = checkAmount / 100 * tipSelection
       let grandTotal = checkAmount + tipValue
       let amountPerPerson = grandTotal / peopleCount
       
        
       return amountPerPerson
    }
    
    var checkGrandTotal: Double{
        let tipSelection = Double(tipPercentage)
        let tipValue = checkAmount / 100 * tipSelection
        let grandTotal = checkAmount + tipValue
        return grandTotal
    }
   
    
    var body: some View {
        NavigationStack{
            Form{
                
                Section("Total amount and people") {
                    
                    TextField("Amount", value: $checkAmount, format: .currency(code: Locale.current.currency?.identifier ?? "USD"))
                        .keyboardType(.decimalPad)
                        .focused($amountIsFocused)
                    
                    Picker("Number of people", selection: $numberOfPeople) {
                        ForEach(2..<100){
                            Text("\($0) people")
                        }
                    }
                    
                }
                
                Section("How much to tip?") {
                    
                    Picker("Tip percentage", selection: $tipPercentage) {
                        ForEach(1..<101) {
                            Text("\($0) percent")
                        }
                    }
    
                }
                Section("Amount per person") {
                    Text(totalPerPerson, format: .currency(code: Locale.current.currency?.identifier ?? "USD"))
                }
                
                Section("Amount including tips") {
                    Text(checkGrandTotal, format: .currency(code: Locale.current.currency?.identifier ?? "USD"))
                }
                
            }
            .navigationTitle("WeSplit")
            .toolbar {
                if amountIsFocused{
                    Button("Done"){
                        amountIsFocused = false
                    }
                }
            }
            
        }
    }
}

#Preview {
    ContentView()
}
