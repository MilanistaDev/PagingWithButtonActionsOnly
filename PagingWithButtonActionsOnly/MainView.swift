//
//  MainView.swift
//  PagingWithButtonActionsOnly
//
//  Created by Takuya Aso on 2024/07/28.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        TabView {
            ForEach(CustomTabItems.allCases, id: \.self) { item in
                Text(item.title)
                    .tabItem {
                        VStack {
                            Image(systemName: item.image)
                            Text(item.title)
                        }
                    }
            }
        }
    }
}

#Preview {
    MainView()
}
