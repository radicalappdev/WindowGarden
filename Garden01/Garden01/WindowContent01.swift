//
//  WindowContent01.swift
//  Garden01
//
//  Created by Joseph Simpson on 7/28/24.
//

import SwiftUI

struct WindowContent01: View {

    @Environment(\.dismissWindow) var dismissWindow

    var body: some View {
        VStack(spacing: 24) {
            
            Text("Yellow Flower 🌼")
                .font(.extraLargeTitle2)

            Text("A window with an id value of `yellowFlower`")
                .font(.headline)

            Button(action: {
                dismissWindow(id: "yellowFlower")
            }, label: {
                Label("Close Window", systemImage: "xmark.circle")
            })

        }
        .padding()
    }
}

#Preview {
    WindowContent01()
}
