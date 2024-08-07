//
//  DetailView.swift
//  Garden04
//
//  Created by Joseph Simpson on 8/7/24.
//

import SwiftUI

struct DetailView: View {

    @Binding var item: FlowerItem? 

    var body: some View {
        if let item = item {
            Text(item.flower)
                .font(.title)
                .padding()
                .navigationBarTitle(item.name)
        } else {
            Text("No Flower Found")
                .font(.title)
                .padding()
                .navigationBarTitle("No Item Selected")
        }
    }
}

//#Preview {
//    DetailView()
//}
