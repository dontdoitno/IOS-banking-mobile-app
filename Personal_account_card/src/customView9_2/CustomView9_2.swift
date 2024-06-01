//
//  CustomView9.swift
//  Banking App
//
//  Created by Егор Губанов on 01.06.2024.
//

import SwiftUI

struct CustomView9_2: View {
    @State public var image8Path: String = "image8_I1491516921426"
    @State public var text8Text: String = "Васильев Артур"
    @State public var text9Text: String = "Тиньк блэк"
    @State public var text10Text: String = " 4756 "
    @State public var text11Text: String = " 9018"
    @State public var image9Path: String = "image9_I1491516921441"
    @State public var text12Text: String = "3 469 52"
    var body: some View {
        ZStack(alignment: .topLeading) {
            Image(image8Path)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 327, height: 204, alignment: .topLeading)
            Text(text8Text)
                .foregroundColor(Color(red: 1.00, green: 1.00, blue: 1.00, opacity: 1.00))
                .font(.custom("Poppins-Regular", size: 24))
                .lineLimit(1)
                .frame(alignment: .leading)
                .multilineTextAlignment(.leading)
                .offset(x: 20.438, y: 21.423)
            Text(text9Text)
                .foregroundColor(Color(red: 1.00, green: 1.00, blue: 1.00, opacity: 1.00))
                .font(.custom("Poppins-Medium", size: 14))
                .lineLimit(1)
                .frame(alignment: .leading)
                .multilineTextAlignment(.leading)
                .offset(x: 20.438, y: 92.824)
            CustomView10_2(
                text10Text: text10Text,
                text11Text: text11Text,
                image9Path: image9Path)
                .frame(width: 196.6, height: 26.609)
                .offset(x: 16.348, y: 121.956)
            Text(text12Text)
                .foregroundColor(Color(red: 1.00, green: 1.00, blue: 1.00, opacity: 1.00))
                .font(.custom("Poppins-SemiBold", size: 20))
                .lineLimit(1)
                .frame(alignment: .leading)
                .multilineTextAlignment(.leading)
                .offset(x: 20.438, y: 149.941)
        }
        .frame(width: 327, height: 204, alignment: .topLeading)
    }
}

struct CustomView9_2_Previews: PreviewProvider {
    static var previews: some View {
        CustomView9_2()
    }
}
