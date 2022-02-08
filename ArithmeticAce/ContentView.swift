//
//  ContentView.swift
//  ArithmeticAce
//
//  Created by gabi brown on 2022-02-08.
//

import SwiftUI

struct ContentView: View {
    
    // MARK: Stored properties
    @State var multiplicand = Int.random(in: 1...12)
    @State var multiplier = Int.random(in: 1...12)
    
    //Holds the user's input whatever it may be
    @State var inputGiven = ""
    
    //Properties to check if input is valid
    @State var answerProvided = false
    @State var answerIsCorrect = false
    
    //MARK: Computed properties
    var correctAnswer: Int {
        return multiplicand * multiplier
    }
    
    var body: some View {
        ScrollView {
            VStack(spacing: 0){
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
                    
                    if answerIsCorrect {
                       
                        Image(systemName: "checkmark.circle")
                            .foregroundColor(.green)
                            .padding()

                    } else {
                        
                        Image(systemName: "multiply.circle")
                            .foregroundColor(.red)
                            .padding()

                    }
                    
                    Spacer()
                    
                    TextField("",
                              text: $inputGiven)
                        .multilineTextAlignment(.trailing)
                        .padding()
                }
                
                Button(
                    
                    action:{
                    
                        // Guard Statment
                        guard let answerGiven = Int(inputGiven) else {
                            //Input is invalid
                            answerProvided = true
                            answerIsCorrect = false
                            return
                        }
                        
                    //check the answer
                        answerProvided = true
                        
                    if answerGiven == correctAnswer {
                    
                        answerIsCorrect = true
                        
                    }else{
                       
                        answerIsCorrect = false
                        
                    }
                         
                }, label: {
                    //Label
                    Text("Check Answer")
                })
                    .buttonStyle(.bordered)
                    .padding()
                
                Button(
                    
                    action:{
                        multiplicand = Int.random(in: 1...12)
                        multiplier = Int.random(in: 1...12)
                         
                }, label: {
                    //Label
                    Text("Reset")
                })
                    .buttonStyle(.bordered)
                    .padding()
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
