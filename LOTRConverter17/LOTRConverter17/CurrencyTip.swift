//
//  CurrencyTip.swift
//  LOTRConverter17
//
//  Created by user268168 on 11/14/24.
//

import Foundation
import TipKit

struct CurrencyTip: Tip {
    var title: Text {
        Text("Change Currency")
    }
    
    
    var message: Text? {
        Text("You can tap the left or right currency to brin up the Select Currency screen.")
    }
    
    
    var image: Image? {
        Image(systemName: "star")
    }
    
}
