//
//  TabPagingView.swift
//  PagingWithButtonActionsOnly
//
//  Created by Takuya Aso on 2024/08/01.
//

import SwiftUI

struct TabPagingView: View {
    @StateObject private var viewModel = TabPagingViewModel()
    @State private var selection = 0

    var body: some View {
        TabView(selection: $selection) {
            ForEach(viewModel.contents.indices, id: \.self) { index in
                ContentView(data: viewModel.contents[index].columns)
                    .tag(index)
                    .ignoresSafeArea()
            }
        }
        .tabViewStyle(.page(indexDisplayMode: .never))
        .edgesIgnoringSafeArea(.top)
        .overlay {
            if viewModel.isLoading {
                ProgressView()
            }
        }
        .onAppear {
            viewModel.onAppear()
        }
    }
}

#Preview {
    TabPagingView()
}
