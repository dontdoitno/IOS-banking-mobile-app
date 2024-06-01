//
//  CustomView3.swift
//  Banking App
//
//  Created by Егор Губанов on 01.06.2024.
//

import SwiftUI

struct CustomView3: View {
    @State public var image1Path: String = "image1_I1488066116"
    @State public var image2Path: String = "image2_I1488066117"
    @State public var text1Text: String = "9:41 AM"
    @State public var image3Path: String = "image3_I1488066130"
    @State public var image4Path: String = "image4_I1488066134"
    var body: some View {
        ZStack(alignment: .topLeading) {
            CustomView4(
                image1Path: image1Path,
                image2Path: image2Path,
                text1Text: text1Text,
                image3Path: image3Path,
                image4Path: image4Path)
                .frame(height: 20)
        }
        .frame(width: 375, height: 20, alignment: .topLeading)
        .clipped()
    }
}

struct CustomView3_Previews: PreviewProvider {
    static var previews: some View {
        CustomView3()
    }
}
