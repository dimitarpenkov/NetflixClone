//
//  StandardHomeMovie.swift
//  Netflix
//
//  Created by Mitko on 20.10.21.
//

import SwiftUI
import Kingfisher

struct StandardHomeMovie: View {

    var movie: Movie

    var body: some View {
        KFImage(movie.thumbnailURL)
            .resizable()
            .scaledToFill()
    }
}

struct StandardHomeMovie_Previews: PreviewProvider {
    static var previews: some View {
        StandardHomeMovie(movie: exampleMovie1)
    }
}
