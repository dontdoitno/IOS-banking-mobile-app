//
//  RootView.swift
//  Banking App
//
//  Created by Виктория on 01.06.2024.
//

import SwiftUI

struct RootView: View {
    @AppStorage("isLoggedIn") var isLoggedIn: Bool = false

    var body: some View {
        if isLoggedIn {
            MainMessagesView()
        } else {
            LoginPageView(didCompleteLoginProcess: {
                
            })
        }
    }
}

struct RootView_Previews: PreviewProvider {
    static var previews: some View {
        RootView()
    }
}
