//
//  ScrollViewReaderPagingView.swift
//  PagingWithButtonActionsOnly
//
//  Created by Takuya Aso on 2024/08/07.
//

import SwiftUI

struct ScrollViewReaderPagingView: View {
    @StateObject private var viewModel = TabPagingViewModel()
    @State private var selection = 0

    var body: some View {
        ScrollViewReader { scrollProxy in
            ScrollView(.horizontal) {
                HStack(spacing: .zero) {
                    ForEach(viewModel.contents.indices, id: \.self) { index in
                        ContentView(data: viewModel.contents[index].columns)
                            .tag(index)
                            .frame(width: UIScreen.main.bounds.width)
                    }
                }
            }
            .scrollDisabled(true)
            .onChange(of: selection) { _ in
                withAnimation {
                    scrollProxy.scrollTo(selection, anchor: .center)
                }
            }
        }
        .ignoresSafeArea(edges: [.top])
        .overlay(alignment: .top) {
            PageSwitchingButtons(
                contents: viewModel.contents,
                selection: $selection
            )
            .padding(.top, 20.0)
        }
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
    ScrollViewReaderPagingView()
}
