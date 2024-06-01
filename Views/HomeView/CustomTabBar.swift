//
//  CustomTabBar.swift
//  Banking App
//
//  Created by Виктория on 20.03.2024.
//

import SwiftUI

enum Tab: String, CaseIterable {
    case house
    case magnifyingglass
    case envelope
    case gearshape
}

struct CustomTabBar: View {
    
    @Binding var selectedTab: Tab
    
    private var fillImage: String {
        selectedTab == .magnifyingglass ? "magnifyingglass" : selectedTab.rawValue + ".fill"
    }
    
    var body: some View {
        
        VStack {
            HStack {
                ForEach(Tab.allCases, id: \.rawValue) { tab in
                    Spacer()
                    Image(systemName: self.selectedTab == tab ? self.fillImage : tab.rawValue)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 24, height: 24)
                        .padding(.bottom, 10)
                        .foregroundColor(self.selectedTab == tab ? .black : self.foregroundColor(for: tab))
                        .onTapGesture {
                            withAnimation(.easeInOut) {
                                self.selectedTab = tab
                            }
                        }
                    Spacer()
                }
            }
            .frame(width: 400, height: 80)
            .background(Color.white)
            .cornerRadius(20)
            .padding()
        }
    }
    
    private func foregroundColor(for tab: Tab) -> Color {
        return selectedTab == tab ? .accentColor : .gray
    }
}

#if DEBUG
struct CustomTabBar_Previews: PreviewProvider {
    static var previews: some View {
        CustomTabBar(selectedTab: .constant(.house))
    }
}
#endif
