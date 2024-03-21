//
//  ContentView.swift
//  Banking App
//
//  Created by Виктория on 17.03.2024.
//

import SwiftUI

struct ContentView: View {
    
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
                            MessageView()
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

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
