//
//  ExchangeInfo.swift
//  LOTRConverter17
//
//  Created by user268168 on 11/13/24.
//

import SwiftUI

struct ExchangeInfo: View {
    
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        ZStack {
            Image(.parchment)
                .resizable()
                .ignoresSafeArea()
                .background(.brown)
            
            VStack {
                
                Text("Exchange Rates")
                    .font(.largeTitle)
                    .tracking(3)
                
                Text("Here at the Prancing Pony, we are happy to offer you a place where you can exchange all the known currencies in the entire world except one. We used to take Brandy Bucks, but after finding out that it was a person instead of a piece of paper, we realized it had no value to us. Below is a simple guide to our currency exchange rates:")
                    .font(.title2)
                    .padding()
                
                ExchangeRate(
                    leftCurrencyImage: .goldpiece,
                    rightCurrencyImage: .goldpenny,
                    exchangeRateText: "1 Gold Piece = 4 Gold Pennies"
                )
                ExchangeRate(
                    leftCurrencyImage: .goldpenny,
                    rightCurrencyImage: .silverpiece,
                    exchangeRateText: "1 Gold Penny = 4 Silver Pecies"
                )
                ExchangeRate(
                    leftCurrencyImage: .silverpiece,
                    rightCurrencyImage: .silverpenny,
                    exchangeRateText: "1 Silver Piece = 4 Silver Pennies"
                )
                ExchangeRate(
                    leftCurrencyImage: .silverpenny,
                    rightCurrencyImage: .copperpenny,
                    exchangeRateText: "1 Silver Penny = 100 Copper Pennies"
                )
                
                Button("Done") {
                    dismiss()
                }
                .buttonStyle(.borderedProminent)
                .tint(.brown)
                .font(.largeTitle)
                .padding()
                .foregroundStyle(.white)
            }
            .foregroundStyle(.black)
        }
    }
}

#Preview {
    ExchangeInfo()
}
