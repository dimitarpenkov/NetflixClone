//
//  SearchBar.swift
//  Netflix
//
//  Created by Mitko on 3.11.21.
//

import SwiftUI

struct SearchBar: View {
    
    @State private var text: String = ""

    var body: some View {
        HStack {
            Image(systemName: "magnifyingglass")
            TextField("Search", text: $text)
        }
        .background(Color.white)
    }
}

struct SearchBar_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.black.edgesIgnoringSafeArea(.all)
            SearchBar()
        }
    }
}
