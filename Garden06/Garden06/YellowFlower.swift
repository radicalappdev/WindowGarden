//
//  YellowFlower.swift
//  Garden06
//
//  Created by Joseph Simpson on 8/15/24.
//

import SwiftUI

struct YellowFlower: View {
    @Environment(AppModel.self) private var appModel

    @Environment(\.scenePhase) private var scenePhase
    @Environment(\.openWindow) private var openWindow

    var body: some View {
        VStack(spacing: 24) {
            Text("🌼🌼🌼 \(appModel.yellowFlowerOpen)")
                .font(.extraLargeTitle2)

            Button(action: {
                openWindow(id: "MainWindow")
            }, label: {
                Label("Open Main Window", systemImage: "arrow.up.left.and.arrow.down.right.rectangle.fill")
            })

        }
        .padding()
        .onChange(of: scenePhase) {
            switch scenePhase {
            case .inactive, .background:
                appModel.mainWindowOpen = false
            case .active:
                appModel.mainWindowOpen = true
            @unknown default:
                appModel.mainWindowOpen = false
            }
        }
    }
}

#Preview {
    YellowFlower()
}
