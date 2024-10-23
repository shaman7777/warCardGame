//
//  ContentView.swift
//  War Card Game
//
//  Created by zhenya on 22.10.24.
//

import SwiftUI

struct ContentView: View {
   @State var playerCard = "card7"
    @State var cpuCard = "card13"
    
    @State var playerScore = 0
   @State var cpuScore = 0
    
    var body: some View {
        
        ZStack{
            Image("background-plain")
                .resizable()
                .ignoresSafeArea()
            VStack{
                Spacer()
                Image("logo")
                Spacer()
                HStack{
                    Spacer()
                    Image(playerCard)
                    Spacer()
                    Image(cpuCard)
                    Spacer()
                }
                Spacer()
                
//                Button("Deal") {
//                    deal()
//                }.foregroundColor(.white)
                
                Button {
                    deal()
                } label: {
                    Image("button")
                }

                
                Spacer()
                HStack{
                    Spacer()
                    VStack{
                        Text("Player")
                            .font(.headline)
                            .padding(.bottom, 10.0)
                           
                        Text(String(playerScore))
                            .font(.largeTitle)
                    }
                    Spacer()
                    VStack{
                        Text("CPU")
                            .font(.headline)
                            .padding(.bottom, 10.0)
                        
                        Text(String(cpuScore))
                            .font(.largeTitle)
                    }
                    Spacer()
                }
                .foregroundColor(.white)
                Spacer()
                
            }
        }
    }
    
    func deal() {
        // рандомная карта игрока
        var playerCardValue = Int.random(in: 2...14)
        playerCard = "card" + String(playerCardValue)
        
        // рандомная карта CPU
        var cpuCardValue = Int.random(in: 2...14)
        cpuCard = "card" + String(cpuCardValue)
        
        //обновить счет
        if playerCardValue > cpuCardValue {
            // прибавим очко игроку
            playerScore += 1
        } else if cpuCardValue > playerCardValue {
            cpuScore += 1
        }
            
        }
    }
    


#Preview {
    ContentView()
}
