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
            HStack{
                Text("X")
                Spacer()
                VStack{
                    Text("5")
                    Text("6")
                }
            }
            .font(.largeTitle)
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
