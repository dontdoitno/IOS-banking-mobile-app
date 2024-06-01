//
//  CustomView10.swift
//  Banking App
//
//  Created by Егор Губанов on 01.06.2024.
//

import SwiftUI

struct CustomView10: View {
    @State public var text10Text: String = " 4756 "
    @State public var text11Text: String = " 9018"
    @State public var image9Path: String = "image9_I1491516921441"
    var body: some View {
        ZStack(alignment: .topLeading) {
            Text(text10Text)
                .foregroundColor(Color(red: 1.00, green: 1.00, blue: 1.00, opacity: 1.00))
                .font(.custom("Poppins-Regular", size: 16))
                .lineLimit(1)
                .frame(alignment: .leading)
                .multilineTextAlignment(.leading)
            Text(text11Text)
                .foregroundColor(Color(red: 1.00, green: 1.00, blue: 1.00, opacity: 1.00))
                .font(.custom("Poppins-Regular", size: 16))
                .lineLimit(1)
                .frame(alignment: .leading)
                .multilineTextAlignment(.leading)
                .offset(x: 152.261)
            Image(image9Path)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 81.749, height: 5.314, alignment: .topLeading)
                .offset(x: 58.251, y: 11.087)
        }
        .frame(width: 196.6, height: 26.609, alignment: .topLeading)
    }
}

struct CustomView10_Previews: PreviewProvider {
    static var previews: some View {
        CustomView10()
    }
}


