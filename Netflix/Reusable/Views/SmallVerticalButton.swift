//
//  SmallVerticalButton.swift
//  Netflix
//
//  Created by Mitko on 21.10.21.
//

import SwiftUI

struct SmallVerticalButton: View {

    var text: String
    var isOnImage: String
    var isOffImage: String
    var isOn: Bool

    var imageName: String {
        return isOn ? isOnImage : isOffImage
    }
    
    var action: () -> Void

    var body: some View {
        Button {
            action()
        } label: {
            VStack {
                Image(systemName: imageName)
                    .foregroundColor(.white)
                    .padding(.bottom, 2)
                Text(text)
                    .foregroundColor(.white)
                    .font(.system(size: 14))
                    .bold()
            }
        }
    }
}

struct SmallVerticalButton_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.black
                .edgesIgnoringSafeArea(.all)
            SmallVerticalButton(
                text: "My List",
                isOnImage: "checkmark",
                isOffImage: "plus",
                isOn: true
            ) {
                print("Tapped")
            }
        }
    }
}
