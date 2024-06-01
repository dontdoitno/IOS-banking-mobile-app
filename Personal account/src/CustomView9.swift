//
//  CustomView9.swift
//  Banking App
//
//  Created by Егор Губанов on 01.06.2024.
//

import SwiftUI

struct CustomView9: View {
    @State public var text10Text: String = "Account 2"
    @State public var text11Text: String = "8988 1234"
    @State public var text12Text: String = "Avalable balance"
    @State public var text13Text: String = "Branch"
    @State public var text14Text: String = "$12,000"
    @State public var text15Text: String = "New York"
    var body: some View {
        ZStack(alignment: .topLeading) {
            Rectangle()
                .fill(Color(red: 1.00, green: 1.00, blue: 1.00, opacity: 1.00))
                .clipShape(RoundedRectangle(cornerRadius: 15))
                .shadow(color: Color(red: 0.21, green: 0.16, blue: 0.72, opacity: 0.07), radius: 30, x: 0, y: 4)
                .frame(width: 327, height: 108)
            Text(text10Text)
                .foregroundColor(Color(red: 0.20, green: 0.20, blue: 0.20, opacity: 1.00))
                .font(.custom("Poppins-SemiBold", size: 16))
                .lineLimit(1)
                .frame(alignment: .leading)
                .multilineTextAlignment(.leading)
                .offset(x: 16, y: 16)
            Text(text11Text)
                .foregroundColor(Color(red: 0.20, green: 0.20, blue: 0.20, opacity: 1.00))
                .font(.custom("Poppins-SemiBold", size: 16))
                .lineLimit(1)
                .frame(alignment: .trailing)
                .multilineTextAlignment(.trailing)
                .offset(x: 232, y: 16)
            Text(text12Text)
                .foregroundColor(Color(red: 0.59, green: 0.59, blue: 0.59, opacity: 1.00))
                .font(.custom("Poppins-Medium", size: 12))
                .lineLimit(1)
                .frame(alignment: .leading)
                .multilineTextAlignment(.leading)
                .offset(x: 16, y: 52)
            Text(text13Text)
                .foregroundColor(Color(red: 0.59, green: 0.59, blue: 0.59, opacity: 1.00))
                .font(.custom("Poppins-Medium", size: 12))
                .lineLimit(1)
                .frame(alignment: .leading)
                .multilineTextAlignment(.leading)
                .offset(x: 16, y: 76)
            Text(text14Text)
                .foregroundColor(Color(red: 0.21, green: 0.16, blue: 0.72, opacity: 1.00))
                .font(.custom("Poppins-SemiBold", size: 12))
                .lineLimit(1)
                .frame(alignment: .trailing)
                .multilineTextAlignment(.trailing)
                .offset(x: 267, y: 52)
            Text(text15Text)
                .foregroundColor(Color(red: 0.21, green: 0.16, blue: 0.72, opacity: 1.00))
                .font(.custom("Poppins-SemiBold", size: 12))
                .lineLimit(1)
                .frame(alignment: .trailing)
                .multilineTextAlignment(.trailing)
                .offset(x: 254, y: 76)
        }
        .frame(width: 327, height: 108, alignment: .topLeading)
        .clipShape(RoundedRectangle(cornerRadius: 15))
    }
}

struct CustomView9_Previews: PreviewProvider {
    static var previews: some View {
        CustomView9()
    }
}
