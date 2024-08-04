//
//  PageSwitchingButtons.swift
//  PagingWithButtonActionsOnly
//
//  Created by Takuya Aso on 2024/08/04.
//

import SwiftUI

struct PageSwitchingButtons: View {
    let contents: [Contents]
    @Binding var selection: Int

    var body: some View {
        HStack {
            ForEach(PageSwitchingButtonType.allCases, id: \.self) { type in
                switch type {
                case .left:
                    if selection > 0 {
                        PageSwitchingButton(
                            content: contents[selection + type.addIndex],
                            type: type
                        ) {
                            // アニメーション中にタップされた際のガード
                            guard selection > 0 else { return }
                            withAnimation {
                                selection += type.addIndex
                            }
                        }
                    }

                    Spacer(minLength: 4.0)

                case .right:
                    Spacer(minLength: 4.0)

                    if selection < contents.count - 1 {
                        PageSwitchingButton(
                            content: contents[selection + type.addIndex],
                            type: type
                        ) {
                            // アニメーション中にタップされた際のガード
                            guard selection < contents.count - 1 else { return }
                            withAnimation {
                                selection += type.addIndex
                            }
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    PageSwitchingButtons(
        contents: sampleContents,
        selection: .constant(0)
    )
}
