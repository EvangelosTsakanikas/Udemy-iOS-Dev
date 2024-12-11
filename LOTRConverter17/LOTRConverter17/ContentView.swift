//
//  ContentView.swift
//  LOTRConverter17
//
//  Created by user268168 on 11/13/24.
//

import SwiftUI
import TipKit

struct ContentView: View {
    
    @State private var showExchangeInfo: Bool = false
    @State private var showSelectCurrency: Bool = false
    
    @State private var leftAmount: String = ""
    @State private var rightAmount: String = ""
    
    @FocusState var leftTyping
    @FocusState var rightTyping
    
    @State private var leftCurrency: Currency = .silverPiece
    @State private var rightCurrency: Currency = .goldPiece
    
    var body: some View {
        ZStack {
            
            Image(.background)
                .resizable()
                .ignoresSafeArea()
            
            VStack {
                
                Image(.prancingpony)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 200)
                
                Text("Currency Exchange")
                    .font(.largeTitle)
                    .foregroundStyle(.white)
                
                HStack {
                    
                    VStack {
                        
                        HStack {
                            
                            Image(leftCurrency.image)
                                .resizable()
                                .scaledToFit()
                                .frame(height: 33)
                            
                            Text(leftCurrency.name)
                                .font(.headline)
                                .foregroundStyle(.white)
                        }
                        .onTapGesture {
                            showSelectCurrency.toggle()
                        }
                        .padding(.bottom, -5)
                        .popoverTip(CurrencyTip(), arrowEdge: .bottom)
                        
                        TextField(
                            "hello",
                            text: $leftAmount,
                            prompt: Text("Amount")
                        )
                        .textFieldStyle(.roundedBorder)
                        .focused($leftTyping)
                        .keyboardType(.decimalPad)
                    }
                    
                    Image(systemName: "equal")
                        .font(.largeTitle)
                        .foregroundStyle(.white)
                        .symbolEffect(.pulse)
                    
                    VStack {
                        
                        HStack {
                            
                            Text(rightCurrency.name)
                                .font(.headline)
                                .foregroundStyle(.white)
                            
                            Image(rightCurrency.image)
                                .resizable()
                                .scaledToFit()
                                .frame(height: 33)
                        }
                        .padding(.bottom, -5)
                        .onTapGesture {
                            showSelectCurrency.toggle()
                        }
                        
                        TextField(
                            "hello",
                            text: $rightAmount,
                            prompt: Text("Amount")
                        )
                        .textFieldStyle(.roundedBorder)
                        .multilineTextAlignment(.trailing)
                        .focused($rightTyping)
                        .keyboardType(.decimalPad)
                    }
                }
                .padding()
                .background(.black.opacity(0.5))
                .clipShape(.capsule)
                
                Spacer()
                
                HStack {
                    
                    Spacer()
                    
                    Button {
                        showExchangeInfo.toggle()
                    } label: {
                        Image(systemName: "info.circle.fill")
                            .font(.largeTitle)
                            .foregroundStyle(.white)
                    }
                    .padding(.trailing)
                }
            }
        }
        .task {
            try? Tips.configure()
        }
        .onChange(of: leftAmount) {
            if leftTyping {
                rightAmount = leftCurrency.convert(leftAmount, to: rightCurrency)
            }
        }
        .onChange(of: rightAmount) {
            if rightTyping {
                leftAmount = rightCurrency.convert(rightAmount, to: leftCurrency)
            }
        }
        .onChange(of: leftCurrency) {
            leftAmount = rightCurrency.convert(rightAmount, to: leftCurrency)
        }
        .onChange(of: rightCurrency) {
            rightAmount = leftCurrency.convert(leftAmount, to: rightCurrency)
        }
        .sheet(isPresented: $showExchangeInfo) {
            ExchangeInfo()
        }
        .sheet(isPresented: $showSelectCurrency) {
            SelectCurrency(
                topCurrency: $leftCurrency,
                bottomCurrency: $rightCurrency
            )
        }
    }
}

#Preview {
    ContentView()
}
