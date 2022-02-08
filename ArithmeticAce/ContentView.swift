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
                    Text("X")
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
                    Text("True/False")
                    Spacer()
                    Text("Sum Value 1 + 2")
                    
                }
                Button(action: {

                    print("Button was pressed")
                }, label: {
                    Text("Press me")
                })
                .buttonStyle(.bordered)

            }
            }
            
            .font(.largeTitle)
            
        }
    }

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
