//
//  PageSwitchingButtonType.swift
//  PagingWithButtonActionsOnly
//
//  Created by Takuya Aso on 2024/08/03.
//

import Foundation

enum PageSwitchingButtonType: CaseIterable {
    case left
    case right

    var addIndex: Int {
        switch self {
        case .left:
            return -1

        case .right:
            return 1
        }
    }

    var edgeIcon: String {
        switch self {
        case .left:
            return "chevron.left"

        case .right:
            return "chevron.right"
        }
    }

    var leadingMargin: CGFloat {
        switch self {
        case .left:
            return 4.0

        case .right:
            return 8.0
        }
    }

    var trailingMargin: CGFloat {
        switch self {
        case .left:
            return 8.0

        case .right:
            return 4.0
        }
    }

    var leadingCornerRadius: CGFloat {
        switch self {
        case .left:
            return .zero

            case .right:
                return 8.0
        }
    }

    var trailingCornerRadius: CGFloat {
        switch self {
        case .left:
            return 8.0

        case .right:
            return .zero
        }
    }
}
