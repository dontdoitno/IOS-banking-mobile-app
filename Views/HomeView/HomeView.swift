//
//  HomeView.swift
//  Banking App
//
//  Created by Виктория on 21.03.2024.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        GeometryReader { geometry in
            VStack {
                // Заголовок главной страницы
                MainPageHeader()
                    .alignmentGuide(VerticalAlignment.top) { _ in  1 }
                
                // Задний фон
//                Color.bluePurple
//                    .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
                
                Spacer()
                
                // Остальное содержимое
                ZStack {
                    VStack {
                        Cards()
                        
                        Spacer()
                        
                        CategoryGridView()
                    }
                    .frame(width: 393, height: 700)
                    .background(Color.white)
                    .cornerRadius(30)
                }
            }
            
        }
    }
}

#Preview {
    HomeView()
}
