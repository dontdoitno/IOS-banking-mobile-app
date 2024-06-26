//
//  CustomView2.swift
//  Banking App
//
//  Created by Егор Губанов on 01.06.2024.
//

import SwiftUI

struct CustomView2_2: View {
    @State public var image1Path: String = "image1_I1491266116"
    @State public var image2Path: String = "image2_I1491266117"
    @State public var text1Text: String = "9:41"
    @State public var image3Path: String = "image3_I1491266130"
    @State public var image4Path: String = "image4_I1491266134"
    var body: some View {
        ZStack(alignment: .topLeading) {
            CustomView3_2(
                image1Path: image1Path,
                image2Path: image2Path,
                text1Text: text1Text,
                image3Path: image3Path,
                image4Path: image4Path)
                .frame(width: 375, height: 20)
                .offset(y: 12)
        }
        .frame(width: 375, height: 32, alignment: .topLeading)
    }
}

struct CustomView2_2_Previews: PreviewProvider {
    static var previews: some View {
        CustomView2_2()
    }
}
