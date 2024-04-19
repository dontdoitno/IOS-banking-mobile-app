//
//  CustomView7.swift
//
//  Created by codia-figma
//

import SwiftUI

struct CustomView7: View {
    @State public var image3Path: String = "image3_I174183895129"
    @State public var text7Text: String = "Password"
    var body: some View {
        ZStack(alignment: .topLeading) {
            Image(image3Path)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 16, height: 16, alignment: .topTrailing)
                .offset(x: 296, y: 14)
            Rectangle()
                .fill(Color.clear)
                .overlay(RoundedRectangle(cornerRadius: 15).stroke(Color(red: 0.79, green: 0.79, blue: 0.79, opacity: 1.00), lineWidth: 1))
                .clipShape(RoundedRectangle(cornerRadius: 15))
                .frame(width: 327, height: 44)
            Text(text7Text)
                .foregroundColor(Color(red: 0.79, green: 0.79, blue: 0.79, opacity: 1.00))
                .font(.custom("Poppins-Medium", size: 14))
                .lineLimit(1)
                .frame(alignment: .leading)
                .multilineTextAlignment(.leading)
                .offset(x: 12, y: 12)
        }
        .frame(width: 327, height: 44, alignment: .topLeading)
    }
}

struct CustomView7_Previews: PreviewProvider {
    static var previews: some View {
        CustomView7()
    }
}
