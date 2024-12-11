//
//  Episode.swift
//  BBQuotes17
//
//  Created by user268168 on 11/16/24.
//

import Foundation

struct Episode: Decodable {
    let episode: Int // 101
    let title: String
    let image: URL
    let synopsis: String
    let writtenBy: String
    let directedBy: String
    let airDate: String
    
    var seasonEpisode: String {
        var episodeString = String(episode) // "101"
        let season = episodeString.removeFirst() // episodeString: "01", season: "1"
        
        if episodeString.first == "0" {
            episodeString = String(episodeString.removeLast()) // "1"
        }
        
        return "Season \(season) Episode \(episodeString)"
    }
}