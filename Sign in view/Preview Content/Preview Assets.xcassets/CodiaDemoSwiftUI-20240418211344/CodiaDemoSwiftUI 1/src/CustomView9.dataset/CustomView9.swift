//
//  CustomView9.swift
//
//  Created by codia-figma
//

import SwiftUI

struct CustomView9: View {
    @State public var text8Text: String = "Sign in"
    @State public var image6Path: String = "image6_I17421100278"
    var body: some View {
        ZStack(alignment: .topLeading) {
            Text(text8Text)
                .foregroundColor(Color(red: 1.00, green: 1.00, blue: 1.00, opacity: 1.00))
                .font(.custom("Poppins-SemiBold", size: 20))
                .lineLimit(1)
                .frame(alignment: .leading)
                .multilineTextAlignment(.leading)
                .offset(x: 56, y: 25)
            Image(image6Path)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 16, height: 16, alignment: .topLeading)
                .offset(x: 24, y: 31)
        }
        .frame(width: 375, height: 53, alignment: .topLeading)
    }
}

struct CustomView9_Previews: PreviewProvider {
    static var previews: some View {
        CustomView9()
    }
}
