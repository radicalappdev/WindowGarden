//
//  Garden02App.swift
//  Garden02
//
//  Created by Joseph Simpson on 7/29/24.
//

import SwiftUI

@main
struct Garden02App: App {

    var body: some Scene {
        WindowGroup {
            ContentView()
        }

        WindowGroup(id: "YellowFlower") {
            YellowFlowerView()
        }
        .defaultSize(CGSize(width: 600, height: 600))
    }}
