//
//  PageSwitchingButton.swift
//  PagingWithButtonActionsOnly
//
//  Created by Takuya Aso on 2024/08/04.
//

import SwiftUI

struct PageSwitchingButton: View {
    let content: Contents
    let type: PageSwitchingButtonType
    var onTap: (() -> Void)?

    var body: some View {
        Button {
            onTap?()
        } label: {
            HStack(spacing: 8.0) {
                if type == .left {
                    Image(systemName: type.edgeIcon)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 16.0, height: 16.0)
                }

                Text(content.pageName)
                    .font(.headline)

                if type == .right {
                    Image(systemName: type.edgeIcon)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 16.0, height: 16.0)
                }
            }
            .padding(.leading, type.leadingMargin)
            .padding(.trailing, type.trailingMargin)
            .frame(height: 32.0)
            .foregroundColor(Color.init(hex: content.textColor))
            .background(Color.init(hex: content.backColor))
            .clipShape(
                .rect(
                    topLeadingRadius: type.leadingCornerRadius,
                    bottomLeadingRadius: type.leadingCornerRadius,
                    bottomTrailingRadius: type.trailingCornerRadius,
                    topTrailingRadius: type.trailingCornerRadius
                )
            )
            .compositingGroup()
            .shadow(color: .black.opacity(0.6), radius: 2.0, x: 0.0, y: 0.0)
        }
    }
}

#Preview {
    PageSwitchingButton(
        content: sampleContents[0],
        type: .left
    )
}
