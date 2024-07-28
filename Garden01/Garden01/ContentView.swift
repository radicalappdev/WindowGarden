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
        VStack {
            Model3D(named: "Scene", bundle: realityKitContentBundle)
                .padding(.bottom, 50)

            Text("Window Garden - 01")
                .font(.extraLargeTitle2)

            HStack {
                Button(action: {
                    openWindow(id: "Window01")
                }, label: {
                    Label("Open Window", systemImage: "inset.filled.center.rectangle.badge.plus")
                })
            }

        }
        .padding()
    }
}

#Preview(windowStyle: .automatic) {
    ContentView()
}
