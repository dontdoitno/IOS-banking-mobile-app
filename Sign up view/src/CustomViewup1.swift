//
//  SIGNVIEW.swift
//  Banking App
//
//  Created by Егор Губанов on 18.04.2024.
//


import SwiftUI

struct CustomViewup1: View {
    @State public var text1Text: String = "Регистрация"
    @State public var image1Path: String = "image1_I17329100278"
    @State public var text2Text: String = "Добро пожаловать!"
    @State public var text3Text: String = "Регистрация"
    @State public var text4Text: String = "Имя"
    @State public var text5Text: String = "Логин"
    @State public var image2Path: String = "image2_I173353895129"
    @State public var text6Text: String = "Пароль"
    @State public var text7Text: String = "Региструруясь, вы соглашаетесь с Политикой Конфиденциальности"
    @State public var image3Path: String = "image3_17338"
    @State public var text8Text: String = "Уже есть аккаунт"
    @State public var image4Path: String = "image4_17340"
    @State public var image5Path: String = "image5_17382"
    @State public var text9Text: String = "Создать новый аккаунт"
    @State public var image6Path: String = "image6_17384"
    @State public var text10Text: String = "Войти
    var body: some View {
        ZStack(alignment: .topLeading) {
            Group {
                CustomViewup2(
                    text1Text: text1Text,
                    image1Path: image1Path)
                    .frame(width: 375, height: 53)
                    .offset(y: 40)
                Rectangle()
                    .fill(Color(red: 1.00, green: 1.00, blue: 1.00, opacity: 1.00))
                    .frame(width: 375, height: 704)
                    .offset(y: 108)
                Text(text2Text)
                    .foregroundColor(Color(red: 0.21, green: 0.16, blue: 0.72, opacity: 1.00))
                    .font(.custom("Poppins-SemiBold", size: 24))
                    .lineLimit(1)
                    .frame(alignment: .leading)
                    .multilineTextAlignment(.leading)
                    .offset(x: 24, y: 132)
                CustomViewup4(text3Text: text3Text)
                    .frame(width: 327, height: 44)
                    .offset(x: 24, y: 673)
                CustomViewup6(text4Text: text4Text)
                    .frame(width: 327, height: 44)
                    .offset(x: 24, y: 409)
                CustomViewup8(text5Text: text5Text)
                    .frame(width: 327, height: 44)
                    .offset(x: 24, y: 473)
                CustomViewup10(
                    image2Path: image2Path,
                    text6Text: text6Text)
                    .frame(width: 327, height: 44)
                    .offset(x: 24, y: 537)
                CustomViewup12(
                    text7Text: text7Text,
                    image3Path: image3Path)
                    .frame(width: 289, height: 40)
                    .offset(x: 24, y: 601)
                Text(text8Text)
                    .foregroundColor(Color(red: 0.20, green: 0.20, blue: 0.20, opacity: 1.00))
                    .font(.custom("Poppins-Regular", size: 12))
                    .lineLimit(1)
                    .frame(alignment: .leading)
                    .multilineTextAlignment(.leading)
                    .offset(x: 106, y: 749)
                Image(image4Path)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 213, height: 165, alignment: .topLeading)
                    .offset(x: 81, y: 212)
            }
            Group {
                Image(image5Path)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 375, height: 34, alignment: .topLeading)
                    .offset(y: 778)
                Text(text9Text)
                    .foregroundColor(Color(red: 0.20, green: 0.20, blue: 0.20, opacity: 1.00))
                    .font(.custom("Poppins-Medium", size: 12))
                    .lineLimit(1)
                    .frame(alignment: .leading)
                    .multilineTextAlignment(.leading)
                    .offset(x: 27, y: 164)
                Image(image6Path)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 375, height: 40, alignment: .topLeading)
                CustomViewup13(text10Text: text10Text)
                    .frame(width: 41, height: 16)
                    .offset(x: 228, y: 749)
            }
        }
        .frame(width: 375, height: 812, alignment: .topLeading)
        .background(Color(red: 0.21, green: 0.16, blue: 0.72, opacity: 1.00))
        .clipped()
    }
}

struct CustomViewup1_Previews: PreviewProvider {
    static var previews: some View {
        CustomViewup1()
    }
}
