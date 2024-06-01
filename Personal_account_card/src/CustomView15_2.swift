//
//  CustomView15.swift
//  Banking App
//
//  Created by Егор Губанов on 01.06.2024.
//

import SwiftUI

struct CustomView15_2: View {
    @State public var text15Text: String = "Добавить карту"
    var body: some View {
        ZStack(alignment: .topLeading) {
            Rectangle()
                .fill(Color(red: 0.21, green: 0.16, blue: 0.72, opacity: 1.00))
                .clipShape(RoundedRectangle(cornerRadius: 15))
                .frame(width: 327, height: 44)
                HStack {
                    Spacer()
                        Text(text15Text)
                            .foregroundColor(Color(red: 1.00, green: 1.00, blue: 1.00, opacity: 1.00))
                            .font(.custom("Poppins-Medium", size: 16))
                            .lineLimit(1)
                            .frame(alignment: .center)
                            .multilineTextAlignment(.center)
                    Spacer()
                }
                .offset(y: 10)
        }
        .frame(width: 327, height: 44, alignment: .topLeading)
    }
}

struct CustomView15_2_Previews: PreviewProvider {
    static var previews: some View {
        CustomView15_2()
    }
}
