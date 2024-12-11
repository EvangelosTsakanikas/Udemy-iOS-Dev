//
//  SelectCurrency.swift
//  LOTRConverter17
//
//  Created by user268168 on 11/14/24.
//

import SwiftUI

struct SelectCurrency: View {
    
    @Environment(\.dismiss) var dismiss
    @Binding var topCurrency: Currency
    @Binding var bottomCurrency: Currency
    
    var body: some View {
        ZStack {
            
            Image(.parchment)
                .resizable()
                .ignoresSafeArea()
                .background(.brown)
            
            VStack {
                
                Text("Select the currency you are starting with: \(Currency.silverPenny.rawValue)")
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    
                IconGrid(currency: $topCurrency)
                
                Text("Select the currency you would like to convert to")
                    .fontWeight(.bold)
                
                IconGrid(currency: $bottomCurrency)
                
                Button("Done") {
                    dismiss()
                }
                .buttonStyle(.borderedProminent)
                .tint(.brown)
                .font(.largeTitle)
                .padding()
                .foregroundStyle(.white)
            }
            .multilineTextAlignment(.center)
            .padding()
        }
    }
}

#Preview {
    SelectCurrency(
        topCurrency: .constant(.copperPenny),
        bottomCurrency: .constant(.silverPiece)
    )
}
