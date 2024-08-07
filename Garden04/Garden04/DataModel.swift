//
//  DataModel.swift
//  Garden04
//
//  Created by Joseph Simpson on 8/7/24.
//

import SwiftUI

struct FlowerItem: Identifiable, Codable, Hashable {
    var id: UUID = UUID()
    let name: String
    let flower: String
}

@MainActor
@Observable
class FlowerData {
    var items: [FlowerItem] = [
        FlowerItem(name: "Lotus", flower: "🌸"),
        FlowerItem(name: "Tulip", flower: "🌷"),
        FlowerItem(name: "Daisy", flower: "🌼"),
        FlowerItem(name: "Rose", flower: "🌹"),
        FlowerItem(name: "Sunflower", flower: "🌻")
    ]
}
