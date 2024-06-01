//
//  SIGNVIEW.swift
//  Banking App
//
//  Created by Егор Губанов on 18.04.2024.
//

import SwiftUI

struct CustomViewup4: View {
    @State public var text3Text: String = "Sign up"
    var body: some View {
        ZStack(alignment: .topLeading) {
            Rectangle()
                .fill(Color(red: 0.95, green: 0.95, blue: 0.98, opacity: 1.00))
                .clipShape(RoundedRectangle(cornerRadius: 15))
                .frame(width: 327, height: 44)
                HStack {
                    Spacer()
                        Text(text3Text)
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

struct CustomViewup4_Previews: PreviewProvider {
    static var previews: some View {
        CustomViewup4()
    }
}
