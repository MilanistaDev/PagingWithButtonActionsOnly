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
            return "Arrow_back"

        case .right:
            return "Arrow_forward"
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

    var cornerRadius: CGFloat {
        return 8.0
    }
}
