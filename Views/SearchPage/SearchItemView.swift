//
//  ItemViewSettings.swift
//  Banking App
//
//  Created by Виктория on 19.04.2024.
//

import SwiftUI

struct SearchItemView: View {
    
    let ItemSearch: ItemSettings
    
    var body: some View {
        
        ZStack() {
            HStack() {
                VStack(alignment: .leading) {
                    Text(ItemSearch.SearchTitle)
                        .fixedSize(horizontal: false, vertical: true)
                        .font(.system(size: 24, weight: .regular))
                        .foregroundColor(Color.black)
                    
                    Spacer()
                    
                    Text(ItemSearch.SearchText)
                        .fixedSize(horizontal: false, vertical: true)
                        .font(.system(size: 12, weight: .regular))
                        .foregroundColor(Color.black)
                        .padding(.bottom, 20)
                    
                    Spacer()
                    
                }
                .padding(20.0)
                
                Spacer()
                
                Image(ItemSearch.SettingsImage)
                    .padding(.trailing, 20)
                    .fixedSize(horizontal: /*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/, vertical: /*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/) 
            }
            
        }
        .frame(width: 327, height: 110)
        .background(Color.white)
        .cornerRadius(20.0)
        .shadow(color: Color.black.opacity(0.2), radius: 10, x: 5, y: 15)
    }
}

#Preview {
    SearchItemView(ItemSearch: ItemSettings(SearchTitle: "sample title", SearchText: "sample text", SettingsImage: "Branch"))
}
