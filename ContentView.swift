//
//  ContentView.swift
//  Banking App
//
//  Created by Виктория on 17.03.2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
            VStack {
                // Добавление заголовка главной страницы
                MainPageHeader()
                    .alignmentGuide(VerticalAlignment.top) { _ in  1 }
                
                ZStack {
                    VStack {
                        Cards()
                        
                        Spacer()
                        
                }

            }
            .frame(width: 393, height: 700)
            .background(Color.white)
            .cornerRadius(30)
        }
        .background(Color.bluePurple)
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
