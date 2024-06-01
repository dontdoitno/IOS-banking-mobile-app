//
//  CustomView11.swift
//  Banking App
//
//  Created by Егор Губанов on 01.06.2024.
//

import SwiftUI

struct CustomView11: View {
    @State public var text16Text: String = "Account 3"
    @State public var text17Text: String = "1900 1234 2222"
    @State public var text18Text: String = "Avalable balance"
    @State public var text19Text: String = "Branch"
    @State public var text20Text: String = "$230,000"
    @State public var text21Text: String = "New York"
    var body: some View {
        ZStack(alignment: .topLeading) {
            Rectangle()
                .fill(Color(red: 1.00, green: 1.00, blue: 1.00, opacity: 1.00))
                .clipShape(RoundedRectangle(cornerRadius: 15))
                .shadow(color: Color(red: 0.21, green: 0.16, blue: 0.72, opacity: 0.07), radius: 30, x: 0, y: 4)
                .frame(width: 327, height: 108)
            Text(text16Text)
                .foregroundColor(Color(red: 0.20, green: 0.20, blue: 0.20, opacity: 1.00))
                .font(.custom("Poppins-SemiBold", size: 16))
                .lineLimit(1)
                .frame(alignment: .leading)
                .multilineTextAlignment(.leading)
                .offset(x: 16, y: 16)
            Text(text17Text)
                .foregroundColor(Color(red: 0.20, green: 0.20, blue: 0.20, opacity: 1.00))
                .font(.custom("Poppins-SemiBold", size: 16))
                .lineLimit(1)
                .frame(alignment: .trailing)
                .multilineTextAlignment(.trailing)
                .offset(x: 198, y: 16)
            Text(text18Text)
                .foregroundColor(Color(red: 0.59, green: 0.59, blue: 0.59, opacity: 1.00))
                .font(.custom("Poppins-Medium", size: 12))
                .lineLimit(1)
                .frame(alignment: .leading)
                .multilineTextAlignment(.leading)
                .offset(x: 16, y: 52)
            Text(text19Text)
                .foregroundColor(Color(red: 0.59, green: 0.59, blue: 0.59, opacity: 1.00))
                .font(.custom("Poppins-Medium", size: 12))
                .lineLimit(1)
                .frame(alignment: .leading)
                .multilineTextAlignment(.leading)
                .offset(x: 16, y: 76)
            Text(text20Text)
                .foregroundColor(Color(red: 0.21, green: 0.16, blue: 0.72, opacity: 1.00))
                .font(.custom("Poppins-SemiBold", size: 12))
                .lineLimit(1)
                .frame(alignment: .trailing)
                .multilineTextAlignment(.trailing)
                .offset(x: 256, y: 52)
            Text(text21Text)
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

struct CustomView11_Previews: PreviewProvider {
    static var previews: some View {
        CustomView11()
    }
}
