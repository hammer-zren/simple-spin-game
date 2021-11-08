//
//  ContentView.swift
//  uitest
//
//  Created by ZHONGTAO REN on 30/7/21.
//

import SwiftUI

struct ContentView: View {
    
    // lesson 13 bonus challenge
    @State private var credit = 1000
    @State private var cards = ["apple","apple","apple"]
    private let cardsMap = ["apple": 100,
                                "star": 200,
                                "cherry": 150]
    var body: some View {
        VStack {
            Text("SwiftUI Slots!")
                .font(.largeTitle)
                .padding(.top, 30)
            
            Spacer()
            Text("Credits: \(credit)")
                .font(.headline)
            
            Spacer()
            HStack {
                ForEach(cards, id: \.self) { card in
                    Image("\(card)")
                        .resizable()
                        .scaledToFit()
                }
            }
            
            Spacer()
            Button(action: {
                for i in cards.indices {
                    let picked = Int.random(in: 0...2)
                    cards[i] = Array(cardsMap.keys)[picked]
                }
                
                if cards.dropFirst().allSatisfy({ $0 == cards.first}) {
                    if let won = cardsMap[cards[0]] {
                        credit += won
                    }
                }
            }, label: {
                Text("Spin")
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding(.vertical, 10)
                    .padding(.horizontal, 40)
                    .background(Color.red)
                    .cornerRadius(30.0)
                    
            })
            Spacer()
        }
    }
    
    // lesson 13 challenge
//    @State private var number = 0
//    @State private var added = true
//    func increase() {
//        number += Int.random(in: 1...10)
//    }
//    func decrease() {
//        number -= Int.random(in: 1...10)
//    }
//    var body: some View {
//
//        VStack(spacing: 10.0) {
//            Text("\(number)")
//            Button("Click Here") {
//                if added && number < 50 {
//                    increase()
//                }
//                else if added && number >= 50 {
//                    added = false
//                    decrease()
//                } else if !added && number > 0 {
//                    decrease()
//                } else if !added && number <= 0 {
//                    added = true
//                    increase()
//                }
//            }
//        }
//    }
    
    // card game
    
//    private let cardName = "card"
//    @State private var playerCardNo = 5
//    @State private var cpuCardNo = 3
//    @State private var playerScore = 0
//    @State private var cpuScore = 0
//
//    var body: some View {
//        ZStack {
//
//            Image("background")
//
//            VStack {
//                Spacer()
//                Image("logo")
//
//                Spacer()
//                HStack {
//                    Spacer()
//                    Image("\(cardName)\(playerCardNo)")
//                    Spacer()
//                    Image("\(cardName)\(cpuCardNo)")
//                    Spacer()
//                }
//                Spacer()
//                Button(action: {
//
//                    playerCardNo = Int.random(in: 2...14)
//                    cpuCardNo = Int.random(in: 2...14)
//
//                    if playerCardNo > cpuCardNo {
//                        playerScore += 1
//                    } else if cpuCardNo > playerCardNo {
//                        cpuScore += 1
//                    } else {
//
//                    }
//
//
//                }, label: {
//                    Image("dealbutton")
//                })
//
//                Spacer()
//                HStack {
//                    Spacer()
//                    VStack(spacing: 10.0) {
//                        Text("Player")
//                            .font(.headline)
//                            .foregroundColor(.white)
//
//                        Text("\(playerScore)")
//                            .font(.largeTitle)
//                            .foregroundColor(.white)
//                    }
//                    Spacer()
//                    VStack(spacing: 10.0) {
//                        Text("CPU")
//                            .font(.headline)
//                            .foregroundColor(.white)
//                        Text("\(cpuScore)")
//                            .font(.largeTitle)
//                            .foregroundColor(.white)
//                    }
//                    Spacer()
//                }
//                Spacer()
//            }
//        }
//    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
