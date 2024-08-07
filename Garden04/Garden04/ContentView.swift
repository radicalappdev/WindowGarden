//
//  ContentView.swift
//  Garden04
//
//  Created by Joseph Simpson on 8/7/24.
//

import SwiftUI
import RealityKit
import RealityKitContent

struct ContentView: View {
    @Environment(\.openWindow) var openWindow

    var body: some View {
        VStack(spacing: 24) {
            Text("Window Garden 🌸")
                .font(.extraLargeTitle2)

            Button(action: {
                openWindow(id: "FlowerWindow")
            }, label: {
                Label("Open Windows", systemImage: "inset.filled.center.rectangle.badge.plus")
            })
        }
        .padding()
    }
}

#Preview(windowStyle: .automatic) {
    ContentView()
        .environment(AppModel())
}
