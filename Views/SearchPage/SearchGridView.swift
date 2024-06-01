//
//  SettingsGridView.swift
//  Banking App
//
//  Created by Виктория on 19.04.2024.
//

import SwiftUI


struct ItemSettings: Identifiable {
    
    let id = UUID()
    let SearchTitle: String
    let SearchText: String
    let SettingsImage: String
}


struct SearchGridView: View {
        
        let items = [
            ItemSettings(SearchTitle: "Branch", SearchText: "Search for branch", SettingsImage: "Branch"),
            ItemSettings(SearchTitle: "Interest rate", SearchText: "Search for interest rate", SettingsImage: "InterestRate"),
            ItemSettings(SearchTitle: "Exchange rate", SearchText: "Search for exchange rate", SettingsImage: "ExchangeRate"),
            ItemSettings(SearchTitle: "Exchange", SearchText: "Exchange amount of money", SettingsImage: "Exchange"),
        ]
        
        let spacing: CGFloat = 4
        @State private var numberOfRows = 1

        var body: some View {
            
            let columns = Array(
                repeating: GridItem(.flexible(), spacing: spacing),
                count: numberOfRows)
            
            ScrollView {
                LazyVGrid(columns: columns, spacing: spacing) {
                    ForEach(items) { item in
                        SearchItemView(ItemSearch: item)
                    }
                    .padding(8.0)
                }
                .padding(.horizontal)
            }
            .background(Color.white)
        }
    }

#Preview {
    SearchGridView()
}
