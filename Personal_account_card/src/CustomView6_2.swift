//
//  CustomView6.swift
//  Banking App
//
//  Created by Егор Губанов on 01.06.2024.
//

import SwiftUI

struct CustomView6_2: View {
    @State public var text2Text: String = "Аккаунт и карта"
    @State public var image5Path: String = "image5_I14913100278"
    var body: some View {
        ZStack(alignment: .topLeading) {
            Text(text2Text)
                .foregroundColor(Color(red: 0.20, green: 0.20, blue: 0.20, opacity: 1.00))
                .font(.custom("Poppins-SemiBold", size: 20))
                .lineLimit(1)
                .frame(alignment: .leading)
                .multilineTextAlignment(.leading)
                .offset(x: 56, y: 25)
            Image(image5Path)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 16, height: 16, alignment: .topLeading)
                .offset(x: 24, y: 31)
        }
        .frame(width: 375, height: 53, alignment: .topLeading)
    }
}

struct CustomView6_2_Previews: PreviewProvider {
    static var previews: some View {
        CustomView6_2()
    }
}
