//
//  SIGNVIEW.swift
//  Banking App
//
//  Created by Егор Губанов on 18.04.2024.
//


import SwiftUI

struct CustomViewup10: View {
    @State public var image2Path: String = "image2_I173353895129"
    @State public var text6Text: String = "Password"
    var body: some View {
        ZStack(alignment: .topLeading) {
            Image(image2Path)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 16, height: 16, alignment: .topTrailing)
                .offset(x: 296, y: 14)
            Rectangle()
                .fill(Color.clear)
                .overlay(RoundedRectangle(cornerRadius: 15).stroke(Color(red: 0.79, green: 0.79, blue: 0.79, opacity: 1.00), lineWidth: 1))
                .clipShape(RoundedRectangle(cornerRadius: 15))
                .frame(width: 327, height: 44)
            Text(text6Text)
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

struct CustomViewup10_Previews: PreviewProvider {
    static var previews: some View {
        CustomViewup10()
    }
}
