//
//  SortAndFilterExercise.swift
//  JPApexPredators17
//
//  Created by user268168 on 11/15/24.
//

import Foundation

class SortAndFilterExercise {
    private var sortedArray: [String] = []
    
    init() {
        sortedArray = sortAndFilter(["Alan", "Timothy", "Kevin", "Ethan", "Matthew"])
    }
    
    func sortAndFilter(_ stringArray: [String]) -> [String] {
        let vowels = CharacterSet(charactersIn: "aeiou")
        
        let filteredStrings = stringArray.filter { word in
            guard let firstCharacter = word.first?.lowercased() else {
                return false
            }
            return !vowels.contains(firstCharacter.unicodeScalars.first!)
        }
        
        let sortedStrings = filteredStrings.sorted {
            $0.lowercased() > $1.lowercased()
        }
        
        print(sortedStrings)
        return sortedStrings
    }
}
