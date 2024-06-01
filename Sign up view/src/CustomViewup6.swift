//
//  SIGNVIEW.swift
//  Banking App
//
//  Created by Егор Губанов on 18.04.2024.
//


import SwiftUI

struct CustomViewup6: View {
    @State public var text4Text: String = "Name"
    var body: some View {
        ZStack(alignment: .topLeading) {
            Rectangle()
                .fill(Color.clear)
                .overlay(RoundedRectangle(cornerRadius: 15).stroke(Color(red: 0.79, green: 0.79, blue: 0.79, opacity: 1.00), lineWidth: 1))
                .clipShape(RoundedRectangle(cornerRadius: 15))
                .frame(width: 327, height: 44)
            Text(text4Text)
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

struct CustomViewup6_Previews: PreviewProvider {
    static var previews: some View {
        CustomViewup6()
    }
}
