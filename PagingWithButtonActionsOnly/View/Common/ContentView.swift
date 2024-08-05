//
//  ContentView.swift
//  PagingWithButtonActionsOnly
//
//  Created by Takuya Aso on 2024/07/29.
//

import SwiftUI

struct ContentView: View {
    let data: [Color]

    var body: some View {
        ScrollView {
            VStack(spacing: .zero) {
                ForEach(data, id: \.self) { color in
                    Rectangle()
                        .fill(color)
                        .aspectRatio(0.7, contentMode: .fill)
                }
            }
        }
    }
}

#Preview {
    ContentView(data: sampleContents[0].columns)
}
