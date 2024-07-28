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
        VStack {
            Text("This is another window.")
                .font(.headline)
            Button(action: {
                dismissWindow(id: "Window01")
            }, label: {
                Label("Close Window", systemImage: "xmark.circle")
            })
        }
    }
}

#Preview {
    WindowContent01()
}
