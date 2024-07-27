//
//  CustomTabItems.swift
//  PagingWithButtonActionsOnly
//
//  Created by Takuya Aso on 2024/07/28.
//

import Foundation

enum CustomTabItems: Int, CaseIterable {
    case tabPaging
    case naviPaging
    case offsetPaging

    var title: String {
        switch self {
        case .tabPaging:
            return "Tab"

        case .naviPaging:
            return "Navi"

        case .offsetPaging:
            return "OffSet"
        }
    }

    var image: String {
        return "arrow.left.and.right.square.fill"
    }
}
