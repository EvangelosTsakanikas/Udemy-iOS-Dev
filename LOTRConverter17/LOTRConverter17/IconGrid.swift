//
//  IconGrid.swift
//  LOTRConverter17
//
//  Created by user268168 on 11/14/24.
//

import SwiftUI

struct IconGrid: View {
    
    @Binding var currency: Currency
    
    var body: some View {
        LazyVGrid(columns: [GridItem(), GridItem(), GridItem()]) {
            ForEach(Currency.allCases) { currency in
                
                if self.currency == currency {
                    
                    CurrencyIcon(
                        currencyImage: currency.image,
                        currencyName: currency.name
                    )
                    .shadow(color: .black, radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                    .overlay {
                        RoundedRectangle(cornerRadius: 25.0)
                            .stroke(lineWidth: 3)
                            .opacity(0.5)
                    }
                } else {
                    CurrencyIcon(
                        currencyImage: currency.image,
                        currencyName: currency.name
                    )
                    .onTapGesture {
                        self.currency = currency
                    }
                }
            }
        }
    }
}

#Preview {
    IconGrid(currency: .constant(.copperPenny))
}
