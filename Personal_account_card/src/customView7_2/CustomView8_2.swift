//
//  CustomView8.swift
//  Banking App
//
//  Created by Егор Губанов on 01.06.2024.
//

import SwiftUI

struct CustomView8: View {
    @State public var text5Text: String = " 4756 "
    @State public var text6Text: String = " 9018"
    @State public var image7Path: String = "image7_I1491416921421"
    var body: some View {
        ZStack(alignment: .topLeading) {
            Text(text5Text)
                .foregroundColor(Color(red: 1.00, green: 1.00, blue: 1.00, opacity: 1.00))
                .font(.custom("Poppins-Regular", size: 16))
                .lineLimit(1)
                .frame(alignment: .leading)
                .multilineTextAlignment(.leading)
            Text(text6Text)
                .foregroundColor(Color(red: 1.00, green: 1.00, blue: 1.00, opacity: 1.00))
                .font(.custom("Poppins-Regular", size: 16))
                .lineLimit(1)
                .frame(alignment: .leading)
                .multilineTextAlignment(.leading)
                .offset(x: 152.261)
            Image(image7Path)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 81.749, height: 5.314, alignment: .topLeading)
                .offset(x: 58.251, y: 11.087)
        }
        .frame(width: 196.6, height: 26.609, alignment: .topLeading)
    }
}

struct CustomView8_Previews: PreviewProvider {
    static var previews: some View {
        CustomView8()
    }
}
