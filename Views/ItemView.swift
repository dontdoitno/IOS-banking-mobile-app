//
//  ItemView.swift
//  Banking App
//
//  Created by Archibald on 19.03.2024.
//

import SwiftUI

struct ItemView: View {
    
    let item: Item
     
    var body: some View {
        
        GeometryReader { reader in
            VStack(spacing: 5) {
                Image(item.image)
                    .resizable()
                    .scaledToFit()
                    .position(x: reader.size.width / 7.5, y: reader.size.height / 5)
                    .frame(width: 28, height: 28)
                    .aspectRatio(contentMode: .fit)
                    .padding(.bottom, 5)
                
                Spacer()
                
                Text(item.title)
                    .fixedSize(horizontal: false, vertical: true)
                    .font(.system(size: 14, weight: .regular))
                    .foregroundColor(Color.gray)
                    .multilineTextAlignment(.center)
                    .frame(width: reader.size.width - 20)
                
                Spacer()
            }
            .padding()
            .frame(width: reader.size.width, height: reader.size.height, alignment: .center)
            .background(Color.white)
        }
        .frame(width: 115, height: 115)
        .clipShape(RoundedRectangle(cornerRadius: 20))
        .shadow(color: Color.black.opacity(0.2), radius: 10, x: 5, y: 5)
    }
}


struct ItemView_Previews: PreviewProvider {
    static var previews: some View {
        ItemView(item: Item(title: "Sample Title", image: "account"))
    }
}
