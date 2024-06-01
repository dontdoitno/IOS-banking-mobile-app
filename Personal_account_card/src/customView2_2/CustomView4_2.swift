//
//  CustomView4.swift
//  Banking App
//
//  Created by Егор Губанов on 01.06.2024.
//

import SwiftUI

struct CustomView4: View {
    @State public var image1Path: String = "image1_I1491266116"
    @State public var image2Path: String = "image2_I1491266117"
    @State public var text1Text: String = "9:41 AM"
    @State public var image3Path: String = "image3_I1491266130"
    @State public var image4Path: String = "image4_I1491266134"
    var body: some View {
        ZStack(alignment: .topLeading) {
            Image(image1Path)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 374.785, height: 19.989, alignment: .topLeading)
            Image(image2Path)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 26.485, height: 11.493, alignment: .topLeading)
                .offset(x: 327.312, y: 4.497)
            CustomView5(text1Text: text1Text)
                .frame(width: 64, height: 14)
                .offset(x: 19.989, y: 3.498)
            Image(image3Path)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 11.993, height: 8.995, alignment: .leading)
                .offset(x: 310.322, y: 5.497)
            Image(image4Path)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 16.491, height: 9.994, alignment: .topLeading)
                .offset(x: 288.834, y: 4.997)
        }
        .frame(height: 20, alignment: .topLeading)
        .frame(maxWidth: .infinity, alignment: .leading)
        .clipped()
    }
}

struct CustomView4_Previews: PreviewProvider {
    static var previews: some View {
        CustomView4()
    }
}
