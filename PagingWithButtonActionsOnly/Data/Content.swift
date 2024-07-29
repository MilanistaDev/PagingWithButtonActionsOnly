//
//  Content.swift
//  PagingWithButtonActionsOnly
//
//  Created by Takuya Aso on 2024/07/29.
//

import SwiftUI

struct Contents {
    let pageName: String
    let textColor: String
    let backColor: String
    let columns: [Color]
}

let sampleContents: [Contents] = [
    Contents(
        pageName: "PAGE1",
        textColor: "#000000",
        backColor: "#f39700",
        columns: [.cyan, .mint, .teal]
    ),
    Contents(
        pageName: "PAGE2",
        textColor: "#FFFFFF",
        backColor: "#E60012",
        columns: [.red, .purple, .yellow]
    ),
    Contents(
        pageName: "PAGE3",
        textColor: "#FFFFFF",
        backColor: "#9b7cb6",
        columns: [.pink, .orange, .blue]
    )
]
