//
//  ContentView.swift
//  VacationInVegas
//
//  Created by user268168 on 11/12/24.
//

import SwiftUI

struct Symbols: View {
    
    @State private var shouldIBounce = false
    @State private var shouldIRotate = false
    
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .font(.largeTitle)
                .imageScale(.large)
                .foregroundStyle(.tint)
                .symbolEffect(.pulse)
            
            if #available(macOS 15.0, *) {
                Image(systemName: "airplane")
                    .font(.largeTitle)
                    .imageScale(.large)
                    .foregroundStyle(.teal)
                    .symbolEffect(.wiggle)
            } else {
                // Fallback on earlier versions
            }
            
            Image(systemName: "wifi")
                .font(.largeTitle)
                .imageScale(.large)
                .foregroundStyle(.purple)
                .symbolEffect(.variableColor.reversing)
            
            if #available(macOS 15.0, *) {
                Image(systemName: "person.crop.circle.badge.plus")
                    .font(.largeTitle)
                    .imageScale(.large)
                    .foregroundStyle(.tint)
                    .symbolRenderingMode(.multicolor)
                    .symbolEffect(.bounce, value: shouldIBounce)
                    .onTapGesture {
                        shouldIBounce.toggle()
                    }
            } else {
                // Fallback on earlier versions
            }
            
            if #available(macOS 15.0, *) {
                Image(systemName: "cloud.sun.rain.fill")
                    .font(.largeTitle)
                    .imageScale(.large)
                    .foregroundStyle(.gray, .yellow, .mint)
                    .symbolEffect(.bounce)
            } else {
                // Fallback on earlier versions
            }
            
            if #available(macOS 15.0, *) {
                Image(systemName: "arrow.counterclockwise.square")
                    .font(.largeTitle)
                    .imageScale(.large)
                    .foregroundStyle(.blue.mix(with: .red, by: 0.25))
                    .symbolEffect(.rotate)
                    .onTapGesture {
                        shouldIRotate.toggle()
                    }
            } else {
                // Fallback on earlier versions
            }
            
            if #available(macOS 15.0, *) {
                Image(systemName: "sun.max.fill")
                    .font(.largeTitle)
                    .imageScale(.large)
                    .foregroundStyle(.blue.mix(with: .red, by: 0.25))
                    .symbolEffect(.rotate)
                    .onTapGesture {
                        shouldIRotate.toggle()
                    }
            } else {
                // Fallback on earlier versions
            }
            
        }
        .padding()
    }
}

#Preview {
    Symbols()
}
