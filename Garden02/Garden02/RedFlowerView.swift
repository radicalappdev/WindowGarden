//
//  RedFlowerView.swift
//  Garden02
//
//  Created by Joseph Simpson on 7/29/24.
//

import SwiftUI

struct RedFlowerView: View {
    @Environment(\.dismissWindow) var dismissWindow

    @State private var widthValue: CGFloat = 800
    @State private var heightValue: CGFloat = 400

    var body: some View {
        VStack(spacing: 24) {

            Text("Red Flower 🌺")
                .font(.extraLargeTitle2)


            Button(action: {
                dismissWindow(id: "RedFlower")
            }, label: {
                Label("Close Window", systemImage: "xmark.circle")
            })

        }
        .padding()
        .frame(width: widthValue, height: heightValue)
    }
}

#Preview {
    RedFlowerView()
}
