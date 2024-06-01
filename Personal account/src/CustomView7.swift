//
//  CustomView7.swift
//  Banking App
//
//  Created by Егор Губанов on 01.06.2024.
//

import SwiftUI

struct CustomView7: View {
    @State public var text4Text: String = "Account 1"
    @State public var text5Text: String = "1900 8988 1234"
    @State public var text6Text: String = "Avalable balance"
    @State public var text7Text: String = "Branch"
    @State public var text8Text: String = "$20,000"
    @State public var text9Text: String = "New York"
    var body: some View {
        ZStack(alignment: .topLeading) {
            Rectangle()
                .fill(Color(red: 1.00, green: 1.00, blue: 1.00, opacity: 1.00))
                .clipShape(RoundedRectangle(cornerRadius: 15))
                .shadow(color: Color(red: 0.21, green: 0.16, blue: 0.72, opacity: 0.07), radius: 30, x: 0, y: 4)
                .frame(width: 327, height: 108)
            Text(text4Text)
                .foregroundColor(Color(red: 0.20, green: 0.20, blue: 0.20, opacity: 1.00))
                .font(.custom("Poppins-SemiBold", size: 16))
                .lineLimit(1)
                .frame(alignment: .leading)
                .multilineTextAlignment(.leading)
                .offset(x: 16, y: 16)
            Text(text5Text)
                .foregroundColor(Color(red: 0.20, green: 0.20, blue: 0.20, opacity: 1.00))
                .font(.custom("Poppins-SemiBold", size: 16))
                .lineLimit(1)
                .frame(alignment: .trailing)
                .multilineTextAlignment(.trailing)
                .offset(x: 194, y: 16)
            Text(text6Text)
                .foregroundColor(Color(red: 0.59, green: 0.59, blue: 0.59, opacity: 1.00))
                .font(.custom("Poppins-Medium", size: 12))
                .lineLimit(1)
                .frame(alignment: .leading)
                .multilineTextAlignment(.leading)
                .offset(x: 16, y: 52)
            Text(text7Text)
                .foregroundColor(Color(red: 0.59, green: 0.59, blue: 0.59, opacity: 1.00))
                .font(.custom("Poppins-Medium", size: 12))
                .lineLimit(1)
                .frame(alignment: .leading)
                .multilineTextAlignment(.leading)
                .offset(x: 16, y: 76)
            Text(text8Text)
                .foregroundColor(Color(red: 0.21, green: 0.16, blue: 0.72, opacity: 1.00))
                .font(.custom("Poppins-SemiBold", size: 12))
                .lineLimit(1)
                .frame(alignment: .trailing)
                .multilineTextAlignment(.trailing)
                .offset(x: 263, y: 52)
            Text(text9Text)
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

struct CustomView7_Previews: PreviewProvider {
    static var previews: some View {
        CustomView7()
    }
}
