//
//  CustomView1.swift
//  Banking App
//
//  Created by Егор Губанов on 01.06.2024.
//

import SwiftUI

struct CustomView1_2: View {
    @State public var image1Path: String = "image1_I1491266116"
    @State public var image2Path: String = "image2_I1491266117"
    @State public var text1Text: String = "9:41"
    @State public var image3Path: String = "image3_I1491266130"
    @State public var image4Path: String = "image4_I1491266134"
    @State public var text2Text: String = "Аккаунт и карта"
    @State public var image5Path: String = "image5_I14913100278"
    @State public var image6Path: String = "image6_I1491416921402"
    @State public var text3Text: String = "Васильев Артур"
    @State public var text4Text: String = "Тиньк блэк"
    @State public var text5Text: String = " 4756 "
    @State public var text6Text: String = " 9018"
    @State public var image7Path: String = "image7_I1491416921421"
    @State public var text7Text: String = "3 469 52"
    @State public var image8Path: String = "image8_I1491516921426"
    @State public var text8Text: String = "Васильев Артур"
    @State public var text9Text: String = "Тиньк блэк"
    @State public var text10Text: String = " 4756 "
    @State public var text11Text: String = " 9018"
    @State public var image9Path: String = "image9_I1491516921441"
    @State public var text12Text: String = "3 469 52"
    @State public var image10Path: String = "image10_14916"
    @State public var text13Text: String = "Аккаунт"
    @State public var text14Text: String = "Карта"
    @State public var text15Text: String = "Добавить карту"
    var body: some View {
        ZStack(alignment: .topLeading) {
            CustomView2_2(
                image1Path: image1Path,
                image2Path: image2Path,
                text1Text: text1Text,
                image3Path: image3Path,
                image4Path: image4Path)
                .frame(width: 375, height: 32)
            CustomView6_2(
                text2Text: text2Text,
                image5Path: image5Path)
                .frame(width: 375, height: 53)
                .offset(y: 32)
            CustomView7_2(
                image6Path: image6Path,
                text3Text: text3Text,
                text4Text: text4Text,
                text5Text: text5Text,
                text6Text: text6Text,
                image7Path: image7Path,
                text7Text: text7Text)
                .frame(width: 327, height: 204)
                .offset(x: 24, y: 176)
            CustomView9_2(
                image8Path: image8Path,
                text8Text: text8Text,
                text9Text: text9Text,
                text10Text: text10Text,
                text11Text: text11Text,
                image9Path: image9Path,
                text12Text: text12Text)
                .frame(width: 327, height: 204)
                .offset(x: 24, y: 404)
            Image(image10Path)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 375, height: 34, alignment: .topLeading)
                .offset(y: 778)
            CustomView11_2(text13Text: text13Text)
                .frame(width: 155, height: 44)
                .offset(x: 24, y: 108)
            CustomView13_2(text14Text: text14Text)
                .frame(width: 155, height: 44)
                .offset(x: 196, y: 108)
            CustomView15_2(text15Text: text15Text)
                .frame(width: 327, height: 44)
                .offset(x: 24, y: 672)
        }
        .frame(width: 375, height: 812, alignment: .topLeading)
        .background(Color(red: 1.00, green: 1.00, blue: 1.00, opacity: 1.00))
        .clipped()
    }
}

struct CustomView1_2_Previews: PreviewProvider {
    static var previews: some View {
        CustomView1_2()
    }
}
