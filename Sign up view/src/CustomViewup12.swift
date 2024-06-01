//
//  SIGNVIEW.swift
//  Banking App
//
//  Created by Егор Губанов on 18.04.2024.
//

import SwiftUI

struct CustomViewup12: View {
    @State public var text7Text: String = "By creating an account your aggree\nto our  Term and Condtions"
    @State public var image3Path: String = "image3_17338"
    var body: some View {
        ZStack(alignment: .topLeading) {
            Text(text7Text)
                .foregroundColor(Color(red: 0.00, green: 0.00, blue: 0.00, opacity: 1.00))
                .font(.custom("Lato-Black", size: 11.993))
                .frame(alignment: .leading)
                .multilineTextAlignment(.leading)
                .offset(x: 36)
            Image(image3Path)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 24, height: 24, alignment: .topLeading)
        }
        .frame(width: 289, height: 40, alignment: .topLeading)
    }
}

struct CustomViewup12_Previews: PreviewProvider {
    static var previews: some View {
        CustomViewup12()
    }
}
