//
//  ContentView.swift
//  whiskyGuru
//
//  Created by Tan Qin on 3/23/25.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var viewModel = WhiskyViewModel()
    
    var body: some View {
        NavigationView {
            List(viewModel.filteredWhiskies) { whisky in
                WhiskyRowView(whisky: whisky)
            }
            .searchable(text: $viewModel.searchText, prompt: "Search whiskies...")
            .navigationTitle("Whisky Guru")
        }
    }
}

#Preview {
    ContentView()
}
