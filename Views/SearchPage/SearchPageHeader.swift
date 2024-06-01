//
//  SettingsPageHeader.swift
//  Banking App
//
//  Created by Виктория on 19.04.2024.
//

import SwiftUI

struct SearchPageHeader: View {
    var body: some View {
        Header()
            .foregroundColor(.white)
        }
    }

    @ViewBuilder

    private func Header() -> some View {
        HStack(alignment: .center) {

            Image("back")
                .resizable()
                .frame(width: 9, height: 16)
                .padding(.leading, 20)
            
            Text("Search")
                .font(.headline)
                .padding(.leading, 20)
                .foregroundColor(.black)
            
            Spacer()
            }
            .padding()
        }

#Preview {
    SearchPageHeader()
}
