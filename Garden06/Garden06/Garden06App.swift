//
//  Garden06App.swift
//  Garden06
//
//  Created by Joseph Simpson on 8/15/24.
//

import SwiftUI

@main
struct Garden06App: App {

    @State private var appModel = AppModel()

    var body: some Scene {
        WindowGroup(id: "MainWindow") {
            ContentView()
                .environment(appModel)
        }


    }
}
