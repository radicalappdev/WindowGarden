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

        WindowGroup(id: "FlowerWindow", for: FlowerItem.self, content: { $value in
            DetailView(item: $value)
                .environment(appModel)
                .environment(flowerData)
        })
        .defaultSize(CGSize(width: 300, height: 300))
        .defaultWindowPlacement { _, context in
            if let mainWindow = context.windows.first {
                return WindowPlacement(.leading(mainWindow))
            }
            return WindowPlacement(.none)
        }

    }
}
