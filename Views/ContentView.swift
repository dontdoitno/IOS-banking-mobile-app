//
//  ContentView.swift
//  Banking App
//
//  Created by Виктория on 17.03.2024.
//

import SwiftUI

struct ContentView: View {
    
    @State var isLoggedIn: Bool = false
    
    var body: some View {
        if !isLoggedIn {
            LoginPageView(didCompleteLoginProcess: {
                
            }, isLoggedIn: $isLoggedIn )
        } else {
            MainContentView()
        }
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
