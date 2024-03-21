//
//  MainPageHeader.swift
//  Banking App
//
//  Created by Виктория on 17.03.2024.
//

import SwiftUI

struct MainPageHeader: View {
    var body: some View {
        Header()
            .foregroundColor(.white)
//        вытащить из комментариев, если надо посмотреть на результат
            .background(Color.bluePurple)
        }
    }

    @ViewBuilder

    private func Header() -> some View {
        HStack(alignment: .center) {
            // Иконка аватара пользователя
            Image(systemName: "person.circle")
                .resizable()
                .frame(width: 40, height: 40)
                .padding(.leading, 20)
            
            // Приветственный текст
            Text("Hi, Jack Peterson")
                .font(.headline)
                .padding(.leading, 20)
            
            Spacer()
            
            // Иконка уведомлений
            Image(systemName: "bell.badge.fill")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 25, height: 25) // изменение размера
                .padding(.trailing, 24) // отступ от правой границы

            }
            .padding()
        }



struct MainPageHeader_Previews: PreviewProvider {
    static var previews: some View {
        MainPageHeader()
    }
}
