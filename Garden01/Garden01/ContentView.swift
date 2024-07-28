//
//  ContentView.swift
//  Garden01
//
//  Created by Joseph Simpson on 7/28/24.
//

import SwiftUI
import RealityKit
import RealityKitContent

struct ContentView: View {

    @Environment(\.openWindow) var openWindow
    @Environment(\.dismissWindow) var dismissWindow

    var body: some View {
        VStack(spacing: 24) {

            Text("Window Garden 🌸")
                .font(.extraLargeTitle2)

            VStack {
                Text("Open and Close a window by id")
                HStack {
                    Button(action: {
                        openWindow(id: "yellowFlower")
                    }, label: {
                        Label("Open Window", systemImage: "inset.filled.center.rectangle.badge.plus")
                    })

                    Button(action: {
                        dismissWindow(id: "yellowFlower")
                    }, label: {
                        Label("Close Window", systemImage: "xmark.circle")
                    })
                }
            }

        }
        .padding()
    }
}

#Preview(windowStyle: .automatic) {
    ContentView()
}
