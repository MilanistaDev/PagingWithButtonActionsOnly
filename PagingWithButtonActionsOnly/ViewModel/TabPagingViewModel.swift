//
//  TabPagingViewModel.swift
//  PagingWithButtonActionsOnly
//
//  Created by Takuya Aso on 2024/08/01.
//

import Foundation

final class TabPagingViewModel: ObservableObject {
    @Published var contents: [Contents] = []
    @Published var isLoading = false

    func onAppear() {
        Task {
            isLoading = true
            defer {
                isLoading = false
            }

            do {
                // wait 3s
                try await Task.sleep(nanoseconds: 3_000_000_000)
                contents = sampleContents

            } catch { }
        }
    }
}
