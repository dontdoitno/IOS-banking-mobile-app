//
//  Cards.swift
//  Banking App
//
//  Created by Anton_Dementev on 18.03.2024.
//

import SwiftUI

struct Cards: View {
    var body: some View {
//        стэк карты и текста на нём
        ZStack() {
            
//            весь текст внутри карты
            VStack(alignment: .leading) {
                
                Text("John Smith")
                    .font(.system(size: 24, weight: .semibold, design: .default))
                    .foregroundColor(.white)

                Spacer()
                
                Text("Amazon Platinum")
                    .font(.system(size: 14, weight: .medium, design: .default))
                    .foregroundColor(.white)
                    .padding([.bottom], 7)
                

                Text("4765 •••• •••• 9018")
                    .font(.system(size: 16, weight: .medium, design: .default))
                    .foregroundColor(.white)
                
//                горизонтальный стэк цены и визы
                HStack {
                    
                    Text("$3.469.52")
                        .font(.system(size: 20, weight: .medium, design: .default))
                        .foregroundColor(.white)

                    Spacer()
                    
                    Image("visa")
                    
                }
            }
            .padding()
                
        }

//        сама карточка
        .frame(width: 327, height: 204)
        .background(
            LinearGradient(colors: [Color.darkBlue, Color.normalBlue, Color.lightBlue], startPoint: .leading, endPoint: .trailing))
        .cornerRadius(20.0)
        .shadow(color: .accentColor.opacity(0.2), radius: 5, x: 4, y: 4)
        .padding()
    }
}

#Preview {
    Cards()
}
