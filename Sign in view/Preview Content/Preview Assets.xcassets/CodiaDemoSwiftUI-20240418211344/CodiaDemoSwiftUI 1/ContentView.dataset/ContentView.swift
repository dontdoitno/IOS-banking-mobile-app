//
//  ContentView.swift
//  ios-swiftui-demo
//
//  Created by codia-figma
//

import SwiftUI

struct ContentsView: View {
    var body: some View {
        ScrollView() {
            CustomView1()
        }
    }
}

struct ContentsView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
