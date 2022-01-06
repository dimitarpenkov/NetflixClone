//
//  CustomGradient.swift
//  Netflix
//
//  Created by Mitko on 21.10.21.
//

import SwiftUI

struct CustomGradient: View {

    var colors: [Color]
    var startPoint, endPoint: UnitPoint
    var paddingEdges: Edge.Set
    var padding: CGFloat?

    var body: some View {
        LinearGradient(
            gradient: Gradient(colors: colors),
            startPoint: startPoint,
            endPoint: endPoint
        )
            .padding(paddingEdges, padding)
    }
}

struct CustomGradient_Previews: PreviewProvider {
    static var previews: some View {
        CustomGradient(
            colors: [Color.black.opacity(0), Color.black.opacity(0.9)],
            startPoint: .top,
            endPoint: .bottom,
            paddingEdges: .top,
            padding: 100
        )
    }
}
