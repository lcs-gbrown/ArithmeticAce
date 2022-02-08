//
//  ContentView.swift
//  ArithmeticAce
//
//  Created by gabi brown on 2022-02-08.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ScrollView {
            VStack{
                HStack{
                    Text("✕")
                        .padding()
                    Spacer()
                    VStack{
                        Text("Value1")
                            .padding()
                        Text("Value2")
                            .padding()
                    }
                }
                
                Divider()
                    .padding()
                
                HStack{
                    Image(systemName: "checkmark.circle")
                    
                        .padding()
                
                    Spacer()
                    Text("30")
                    
                        .padding()
                }
                Button(action: {
                    
                    print("Button was pressed")
                }, label: {
                    Text("Check Answer")
                })
                    .buttonStyle(.bordered)
                
            }
            .font(.system(size: 50))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
