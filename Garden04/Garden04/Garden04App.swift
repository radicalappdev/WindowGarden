//
//  Garden04App.swift
//  Garden04
//
//  Created by Joseph Simpson on 8/7/24.
//

import SwiftUI

@main
struct Garden04App: App {

    @State private var appModel = AppModel()
    @State private var flowerData = FlowerData()

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(appModel)
                .environment(flowerData)
        }
        .defaultSize(width: 500, height: 500)

        // Garden Windows
        WindowGroup(id: "FlowerWindow") {
            Text("🌼")
                .font(.system(size: 128))
        }
        .defaultSize(CGSize(width: 300, height: 300))
        .defaultWindowPlacement { _, context in
            if let mainWindow = context.windows.first {
                return WindowPlacement(.leading(mainWindow))
            }
            return WindowPlacement(.none)
        }

    }
}
