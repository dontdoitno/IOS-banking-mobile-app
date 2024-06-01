//
//  CustomView11.swift
//  Banking App
//
//  Created by Егор Губанов on 01.06.2024.
//

import SwiftUI

struct CustomView11: View {
    @State public var text13Text: String = "Account"
    var body: some View {
        ZStack(alignment: .topLeading) {
            Rectangle()
                .fill(Color(red: 0.95, green: 0.95, blue: 0.98, opacity: 1.00))
                .clipShape(RoundedRectangle(cornerRadius: 15))
                .frame(width: 155, height: 44)
                HStack {
                    Spacer()
                        Text(text13Text)
                            .foregroundColor(Color(red: 0.20, green: 0.20, blue: 0.20, opacity: 1.00))
                            .font(.custom("Poppins-Medium", size: 16))
                            .lineLimit(1)
                            .frame(alignment: .center)
                            .multilineTextAlignment(.center)
                    Spacer()
                }
                .offset(y: 10)
        }
        .frame(width: 155, height: 44, alignment: .topLeading)
    }
}

struct CustomView11_Previews: PreviewProvider {
    static var previews: some View {
        CustomView11()
    }
}
