//
//  ContentView.swift
//  Dice-SwiftUI
//
//  Created by Ankita Jaiswal on 04/06/24.
//

import SwiftUI

struct ContentView: View {
   @State var leftDiceNumber: Int = 1
  @State  var rightDiceNumber: Int = 1
    
    var body: some View {
        ZStack{
            Image(.background)
                .resizable()
                .ignoresSafeArea()
            VStack {
                Image(.diceeLogo)
                Spacer()
                HStack {
                    DiceView(n: leftDiceNumber )
                    DiceView(n: rightDiceNumber)
                }
                Spacer()
                Button(action: {
                    self.leftDiceNumber = Int.random(in: 1...6)
                    self.rightDiceNumber = Int.random(in: 1...6)
                }){
                    Text("Roll")
                        .font(.system(size: 50))
                        .foregroundStyle(.white)
                        .padding(.all)
                }.background(.red)
                    .padding(.all)
                       

            }
        }
    }
}

#Preview {
    ContentView()
}

struct DiceView: View {
    let n: Int
    var body: some View {
        Image("dice\(n)")
            .resizable().aspectRatio(contentMode: .fit)
            .padding(.all)
    }
}
