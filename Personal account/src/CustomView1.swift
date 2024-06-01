//
//  CustomView1.swift
//  Banking App
//
//  Created by Егор Губанов on 01.06.2024.
//

import SwiftUI

struct CustomView1: View {
    @State public var image1Path: String = "image1_I1488066116"
    @State public var image2Path: String = "image2_I1488066117"
    @State public var text1Text: String = "9:41 AM"
    @State public var image3Path: String = "image3_I1488066130"
    @State public var image4Path: String = "image4_I1488066134"
    @State public var text2Text: String = "Account and card"
    @State public var image5Path: String = "image5_I14881100278"
    @State public var image6Path: String = "image6_14882"
    @State public var text3Text: String = "Push Puttichai"
    @State public var image7Path: String = "image7_14884"
    @State public var text4Text: String = "Account 1"
    @State public var text5Text: String = "1900 8988 1234"
    @State public var text6Text: String = "Avalable balance"
    @State public var text7Text: String = "Branch"
    @State public var text8Text: String = "$20,000"
    @State public var text9Text: String = "New York"
    @State public var text10Text: String = "Account 2"
    @State public var text11Text: String = "8988 1234"
    @State public var text12Text: String = "Avalable balance"
    @State public var text13Text: String = "Branch"
    @State public var text14Text: String = "$12,000"
    @State public var text15Text: String = "New York"
    @State public var text16Text: String = "Account 3"
    @State public var text17Text: String = "1900 1234 2222"
    @State public var text18Text: String = "Avalable balance"
    @State public var text19Text: String = "Branch"
    @State public var text20Text: String = "$230,000"
    @State public var text21Text: String = "New York"
    @State public var text22Text: String = "Account"
    @State public var text23Text: String = "Card"
    var body: some View {
        ZStack(alignment: .topLeading) {
            CustomView2(
                image1Path: image1Path,
                image2Path: image2Path,
                text1Text: text1Text,
                image3Path: image3Path,
                image4Path: image4Path)
                .frame(width: 375, height: 32)
            CustomView6(
                text2Text: text2Text,
                image5Path: image5Path)
                .frame(width: 375, height: 53)
                .offset(y: 32)
            Image(image6Path)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 375, height: 34, alignment: .topLeading)
                .offset(y: 778)
            Text(text3Text)
                .foregroundColor(Color(red: 0.21, green: 0.16, blue: 0.72, opacity: 1.00))
                .font(.custom("Poppins-SemiBold", size: 16))
                .lineLimit(1)
                .frame(alignment: .leading)
                .multilineTextAlignment(.leading)
                .offset(x: 128, y: 296)
            Image(image7Path)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 100, height: 100, alignment: .topLeading)
                .offset(x: 138, y: 184)
            CustomView7(
                text4Text: text4Text,
                text5Text: text5Text,
                text6Text: text6Text,
                text7Text: text7Text,
                text8Text: text8Text,
                text9Text: text9Text)
                .frame(width: 327, height: 108)
                .offset(x: 24, y: 352)
            CustomView9(
                text10Text: text10Text,
                text11Text: text11Text,
                text12Text: text12Text,
                text13Text: text13Text,
                text14Text: text14Text,
                text15Text: text15Text)
                .frame(width: 327, height: 108)
                .offset(x: 24, y: 480)
            CustomView11(
                text16Text: text16Text,
                text17Text: text17Text,
                text18Text: text18Text,
                text19Text: text19Text,
                text20Text: text20Text,
                text21Text: text21Text)
                .frame(width: 327, height: 108)
                .offset(x: 24, y: 608)
            CustomView13(text22Text: text22Text)
                .frame(width: 155, height: 44)
                .offset(x: 24, y: 108)
            CustomView15(text23Text: text23Text)
                .frame(width: 155, height: 44)
                .offset(x: 195, y: 108)
        }
        .frame(width: 375, height: 812, alignment: .topLeading)
        .background(Color(red: 1.00, green: 1.00, blue: 1.00, opacity: 1.00))
        .clipped()
    }
}

struct CustomView1_Previews: PreviewProvider {
    static var previews: some View {
        CustomView1()
    }
}
