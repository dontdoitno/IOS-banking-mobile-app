//
//  MainContentView.swift
//  Banking App
//
//  Created by Виктория on 01.06.2024.
//

import SwiftUI

struct MainContentView: View {
    
    @State var selectedTab: Tab = .house
    @State var selectedItem: Item? = nil
    
    var body: some View {
        
        ZStack {
            VStack {
                TabView(selection: $selectedTab) {
                    ForEach(Tab.allCases, id: \.rawValue) { tab in
                        switch selectedTab {
                        case .house:
                            HomeView()
                        case .magnifyingglass:
                            SearchView()
                        case .envelope:
                            MainMessagesView()
                        case .gearshape:
                            SettingsView()
                        }
                    }
                }
            }
            
            VStack {
//                Spacer() // Размещаем CustomTabBar внизу экрана
                CustomTabBar(selectedTab: $selectedTab)
                    .padding(.top, 745)
            }
        }
    }
}

struct MainContentView_Previews: PreviewProvider {
    static var previews: some View {
        MainContentView()
    }
}
