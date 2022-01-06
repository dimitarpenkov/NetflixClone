//
//  Episode.swift
//  Netflix
//
//  Created by Mitko on 22.10.21.
//

import Foundation

struct Episode: Identifiable {

    var id = UUID().uuidString
    
    var name: String
    var season: Int
    var episodeNumber: Int
    var thumbnailImageUrlString: String
    var description: String
    var length: Int
    var videoURL: URL
    var thumnailURL: URL {
        return URL(string: thumbnailImageUrlString)!
    }
}
