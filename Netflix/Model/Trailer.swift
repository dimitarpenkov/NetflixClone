//
//  Trailer.swift
//  Netflix
//
//  Created by Mitko on 25.10.21.
//

import Foundation

struct Trailer: Identifiable {
    

    var id: String = UUID().uuidString
    var name: String
    var videoURL: URL
    var thumbnailImageURL: URL
}
