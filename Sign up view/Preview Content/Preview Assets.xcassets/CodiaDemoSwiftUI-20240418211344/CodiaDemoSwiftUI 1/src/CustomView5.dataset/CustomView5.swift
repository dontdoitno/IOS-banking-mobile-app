//
//  CustomView5.swift
//
//  Created by codia-figma
//

import SwiftUI

struct CustomView5: View {
    @State public var text6Text: String = "Text input"
    var body: some View {
        ZStack(alignment: .topLeading) {
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

struct CustomView5_Previews: PreviewProvider {
    static var previews: some View {
        CustomView5()
    }
}
