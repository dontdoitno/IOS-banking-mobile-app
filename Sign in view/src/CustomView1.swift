//
//  SIGNVIEW.swift
//  Banking App
//
//  Created by Егор Губанов on 18.04.2024.
//


import SwiftUI

struct CustomView1: View {
    @State public var text1Text: String = "Добро пожаловать!"
    @State public var text2Text: String = "Войдите для продолжения"
    @State public var text3Text: String = "Забыл пароль"
    @State public var image1Path: String = "image1_17391"
    @State public var text4Text: String = "Нет аккаунта"
    @State public var text5Text: String = "Вход"
    @State public var image2Path: String = "image2_17395"
    @State public var text6Text: String = "Логин"
    @State public var image3Path: String = "image3_I174183895129"
    @State public var text7Text: String = "Пароль"
    @State public var image4Path: String = "image4_17419"
    @State public var image5Path: String = "image5_17420"
    @State public var text8Text: String = "Вход"
    @State public var image6Path: String = "image6_I17421100278"
    @State public var text9Text: String = "Регистрация"
    var body: some View {
        ZStack(alignment: .topLeading) {
            Group {
                Rectangle()
                    .fill(Color(red: 1.00, green: 1.00, blue: 1.00, opacity: 1.00))
                    .frame(width: 375, height: 704)
                    .offset(y: 108)
                Text(text1Text)
                    .foregroundColor(Color(red: 0.21, green: 0.16, blue: 0.72, opacity: 1.00))
                    .font(.custom("Poppins-SemiBold", size: 24))
                    .lineLimit(1)
                    .frame(alignment: .leading)
                    .multilineTextAlignment(.leading)
                    .offset(x: 24, y: 132)
                Text(text2Text)
                    .foregroundColor(Color(red: 0.20, green: 0.20, blue: 0.20, opacity: 1.00))
                    .font(.custom("Poppins-Medium", size: 12))
                    .lineLimit(1)
                    .frame(alignment: .leading)
                    .multilineTextAlignment(.leading)
                    .offset(x: 24, y: 164)
                Text(text3Text)
                    .foregroundColor(Color(red: 0.79, green: 0.79, blue: 0.79, opacity: 1.00))
                    .font(.custom("Poppins-Medium", size: 12))
                    .lineLimit(1)
                    .frame(alignment: .leading)
                    .multilineTextAlignment(.leading)
                    .offset(x: 207, y: 529)
                Image(image1Path)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 64, height: 64, alignment: .topLeading)
                    .offset(x: 156, y: 653)
                Text(text4Text)
                    .foregroundColor(Color(red: 0.20, green: 0.20, blue: 0.20, opacity: 1.00))
                    .font(.custom("Poppins-Regular", size: 12))
                    .lineLimit(1)
                    .frame(alignment: .leading)
                    .multilineTextAlignment(.leading)
                    .offset(x: 88, y: 741)
                CustomView3(text5Text: text5Text)
                    .frame(width: 327, height: 44)
                    .offset(x: 24, y: 585)
                Image(image2Path)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 213, height: 165, alignment: .topLeading)
                    .offset(x: 81, y: 212)
                CustomView5(text6Text: text6Text)
                    .frame(width: 327, height: 44)
                    .offset(x: 24, y: 409)
                CustomView7(
                    image3Path: image3Path,
                    text7Text: text7Text)
                    .frame(width: 327, height: 44)
                    .offset(x: 24, y: 473)
            }
            Group {
                Image(image4Path)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 375, height: 34, alignment: .topLeading)
                    .offset(y: 778)
                Image(image5Path)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 375, height: 40, alignment: .topLeading)
                CustomView9(
                    text8Text: text8Text,
                    image6Path: image6Path)
                    .frame(width: 375, height: 53)
                    .offset(y: 40)
                CustomView10(text9Text: text9Text)
                    .frame(width: 47, height: 16)
                    .offset(x: 241.5, y: 741)
            }
        }
        .frame(width: 375, height: 812, alignment: .topLeading)
        .background(Color(red: 0.21, green: 0.16, blue: 0.72, opacity: 1.00))
        .clipped()
    }
}

struct CustomView1_Previews: PreviewProvider {
    static var previews: some View {
        CustomView1()
    }
}
