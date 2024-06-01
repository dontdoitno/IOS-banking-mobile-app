//
//  SettingsView.swift
//  Banking App
//
//  Created by Виктория on 21.03.2024.
//

import SwiftUI


struct SearchView: View {
    var body: some View {
        
        VStack() {
            SearchPageHeader()
            
            Spacer()
            
            SearchGridView()
        }
    }
}


#Preview {
    SearchView()
}
