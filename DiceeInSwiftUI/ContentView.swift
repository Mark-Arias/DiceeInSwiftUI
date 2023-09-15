//
//  ContentView.swift
//  DiceeInSwiftUI
//
//  Created by Mark Arias on 9/14/23.
//

import SwiftUI

struct ContentView: View {
    
    @State private var leftDiceNumber = 1
    @State private var rightDiceNumber = 1
    
    
    var body: some View {
        ZStack {
            Image("background")
                .resizable()
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                Image("diceeLogo")
                Spacer()
                HStack {
                    DiceView(n: leftDiceNumber)
                    DiceView(n: rightDiceNumber)
                }
                .padding(.horizontal)
                Spacer()
                Button("Roll") {
                    rollDice()
                }
                .font(.system(size: 50))
                .fontWeight(.heavy)
                .foregroundColor(.white)
                .padding(.horizontal)
                .background(Color.red)
            }
            .padding(.bottom)
            
        }
        
    }
    
    func rollDice() {
        leftDiceNumber = Int.random(in: 1...6)
        rightDiceNumber = Int.random(in: 1...6)
    }
}

struct DiceView: View {
    
    var n: Int
    
    var body: some View {
        Image("dice\(n)")
            .resizable()
            .aspectRatio(1, contentMode: .fit)
            .padding(.all)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
