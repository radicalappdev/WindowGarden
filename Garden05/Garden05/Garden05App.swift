//
//  Garden05App.swift
//  Garden05
//
//  Created by Joseph Simpson on 8/14/24.
//

import SwiftUI

@main
struct Garden05App: App {

    @State private var appModel = AppModel()

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(appModel)
        }

      
    }
}
