//
//  ContentView.swift
//  ArithmeticAce
//
//  Created by gabi brown on 2022-02-08.
//

import SwiftUI

struct ContentView: View {
    
    // MARK: Stored properties
    let multiplicand = Int.random(in: 1...12)
    let multiplier = Int.random(in: 1...12)
    
    //MARK: Computed properties
    
    var body: some View {
        ScrollView {
            VStack{
                HStack{
                    Text("✕")
                        .padding()
                    Spacer()
                    VStack(alignment: .trailing){
                        Text("\(multiplicand)")
                            .padding()
                        Text("\(multiplier)")
                            .padding()
                    }
                }
                
                Divider()
                    .padding()
                
                HStack{
                    Image(systemName: "checkmark.circle")
                        .foregroundColor(.green)
                    
                        .padding()
                
                    Spacer()
                    
                    Text("Answer")
                    
                        .padding()
                }
                
                Button(action: {
                    
                    print("Button was pressed")
                }, label: {
                    Text("Check Answer")
                })
                    .buttonStyle(.bordered)
                
            }
            .font(.system(size: 40))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
