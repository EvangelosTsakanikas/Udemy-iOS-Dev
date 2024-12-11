//
//  ExchangeRate.swift
//  LOTRConverter17
//
//  Created by user268168 on 11/14/24.
//

import SwiftUI

struct ExchangeRate: View {
    
    let leftCurrencyImage: ImageResource
    let rightCurrencyImage: ImageResource
    let exchangeRateText: String
    
    var body: some View {
        HStack {
            Image(leftCurrencyImage)
                .resizable()
                .scaledToFit()
                .frame(height: 33)
            
            Text(exchangeRateText)
            
            Image(rightCurrencyImage)
                .resizable()
                .scaledToFit()
                .frame(height: 33)
        }
    }
}

#Preview {
    ExchangeRate(leftCurrencyImage: .silverpiece, rightCurrencyImage: .silverpenny, exchangeRateText: "1 Silver Piece = 4 Silver Pennies")
}
