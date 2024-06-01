//
//  CustomView7.swift
//  Banking App
//
//  Created by Егор Губанов on 01.06.2024.
//

import SwiftUI

struct CustomView7_2: View {
    @State public var image6Path: String = "image6_I1491416921402"
    @State public var text3Text: String = "Васильев Артур"
    @State public var text4Text: String = "Тиньк блэк"
    @State public var text5Text: String = " 4756 "
    @State public var text6Text: String = " 9018"
    @State public var image7Path: String = "image7_I1491416921421"
    @State public var text7Text: String = "3 469 52"
    var body: some View {
        ZStack(alignment: .topLeading) {
            Image(image6Path)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 327, height: 204, alignment: .topLeading)
            Text(text3Text)
                .foregroundColor(Color(red: 1.00, green: 1.00, blue: 1.00, opacity: 1.00))
                .font(.custom("Poppins-Regular", size: 24))
                .lineLimit(1)
                .frame(alignment: .leading)
                .multilineTextAlignment(.leading)
                .offset(x: 20.438, y: 21.423)
            Text(text4Text)
                .foregroundColor(Color(red: 1.00, green: 1.00, blue: 1.00, opacity: 1.00))
                .font(.custom("Poppins-Medium", size: 14))
                .lineLimit(1)
                .frame(alignment: .leading)
                .multilineTextAlignment(.leading)
                .offset(x: 20.438, y: 92.824)
            CustomView8_2(
                text5Text: text5Text,
                text6Text: text6Text,
                image7Path: image7Path)
                .frame(width: 196.6, height: 26.609)
                .offset(x: 16.348, y: 121.956)
            Text(text7Text)
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

struct CustomView7_2_Previews: PreviewProvider {
    static var previews: some View {
        CustomView7_2()
    }
}
