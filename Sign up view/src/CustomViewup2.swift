//
//  SIGNVIEW.swift
//  Banking App
//
//  Created by Егор Губанов on 18.04.2024.
//

import SwiftUI

struct CustomViewup2: View {
    @State public var text1Text: String = "Sign up"
    @State public var image1Path: String = "image1_I17329100278"
    var body: some View {
        ZStack(alignment: .topLeading) {
            Text(text1Text)
                .foregroundColor(Color(red: 1.00, green: 1.00, blue: 1.00, opacity: 1.00))
                .font(.custom("Poppins-SemiBold", size: 20))
                .lineLimit(1)
                .frame(alignment: .leading)
                .multilineTextAlignment(.leading)
                .offset(x: 56, y: 25)
            Image(image1Path)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 16, height: 16, alignment: .topLeading)
                .offset(x: 24, y: 31)
        }
        .frame(width: 375, height: 53, alignment: .topLeading)
    }
}

struct CustomViewup2_Previews: PreviewProvider {
    static var previews: some View {
        CustomViewup2()
    }
}
