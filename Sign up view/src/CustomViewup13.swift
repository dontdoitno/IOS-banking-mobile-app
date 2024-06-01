//
//  SIGNVIEW.swift
//  Banking App
//
//  Created by Егор Губанов on 18.04.2024.
//


import SwiftUI

struct CustomViewup13: View {
    @State public var text10Text: String = "Sign In"
    var body: some View {
        HStack(alignment: .center, spacing: 10) {
            Text(text10Text)
                .foregroundColor(Color(red: 0.21, green: 0.16, blue: 0.72, opacity: 1.00))
                .font(.custom("Poppins-SemiBold", size: 12))
                .lineLimit(1)
                .frame(alignment: .leading)
                .multilineTextAlignment(.leading)
        }
        .frame(width: 41, height: 16, alignment: .top)
    }
}

struct CustomViewup13_Previews: PreviewProvider {
    static var previews: some View {
        CustomViewup13()
    }
}
