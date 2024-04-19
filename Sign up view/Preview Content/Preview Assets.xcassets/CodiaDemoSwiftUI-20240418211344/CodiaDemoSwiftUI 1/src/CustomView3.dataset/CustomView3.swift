//
//  CustomView3.swift
//
//  Created by codia-figma
//

import SwiftUI

struct CustomView3: View {
    @State public var text5Text: String = "Sign in"
    var body: some View {
        ZStack(alignment: .topLeading) {
            Rectangle()
                .fill(Color(red: 0.95, green: 0.95, blue: 0.98, opacity: 1.00))
                .clipShape(RoundedRectangle(cornerRadius: 15))
                .frame(width: 327, height: 44)
                HStack {
                    Spacer()
                        Text(text5Text)
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

struct CustomView3_Previews: PreviewProvider {
    static var previews: some View {
        CustomView3()
    }
}
