//
//  CustomTabItems.swift
//  PagingWithButtonActionsOnly
//
//  Created by Takuya Aso on 2024/07/28.
//

import Foundation

enum CustomTabItems: Int, CaseIterable {
    case tabPaging
    case scrollViewReader

    var title: String {
        switch self {
        case .tabPaging:
            return "Tab"

        case .scrollViewReader:
            return "ScrollToX"
        }
    }

    var image: String {
        return "arrow.left.and.right.square.fill"
    }
}
