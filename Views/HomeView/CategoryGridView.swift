//
//  CategoryGridView.swift
//  Banking App
//
//  Created by Egor Gubanov on 19.03.2024.
//

import SwiftUI

struct Item: Identifiable {
    
    let id = UUID()
    let title: String
    let image: String
}


struct CategoryGridView: View {
    
    let items = [
        Item(title: "Account and card", image: "account"),
        Item(title: "Transfer", image: "transfer"),
        Item(title: "Withdraw", image: "withdraw"),
        Item(title: "Mobile prepaid", image: "mobilePrepaid"),
        Item(title: "Pay the bill", image: "payTheBill"),
        Item(title: "Save online", image: "saveOnline"),
        Item(title: "Credit card", image: "creditCard"),
        Item(title: "Transaction report", image: "transactionReport"),
        Item(title: "Beneficiary", image: "beneficiary"),
    ]
    
    let spacing: CGFloat = 10
    @State private var numberOfRows = 3

    var body: some View {
        
        let columns = Array(
            repeating: GridItem(.flexible(), spacing: spacing),
            count: numberOfRows)
        
        ScrollView {
            LazyVGrid(columns: columns, spacing: spacing) {
                ForEach(items) { item in
                    ItemView(item: item)
                }
            }
            .padding(.horizontal)
        }
        .background(Color.white)
    }
}


#Preview {
    CategoryGridView()
}
