//
//  CustomView5.swift
//  Banking App
//
//  Created by Егор Губанов on 01.06.2024.
//

import SwiftUI

struct CustomView5: View {
    @State public var text1Text: String = "9:41"
    var body: some View {
        ZStack(alignment: .topLeading) {
            Text(text1Text)
                .foregroundColor(Color(red: 0.20, green: 0.20, blue: 0.20, opacity: 1.00))
                .font(.custom("Poppins-SemiBold", size: 12))
                .lineLimit(1)
                .frame(alignment: .leading)
                .multilineTextAlignment(.leading)
        }
        .frame(width: 64, height: 14, alignment: .topLeading)
        .clipped()
    }
}

struct CustomView5_Previews: PreviewProvider {
    static var previews: some View {
        CustomView5()
    }
}
