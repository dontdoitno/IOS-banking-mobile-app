//
//  WebImageView_2.swift
//  Banking App
//
//  Created by Егор Губанов on 01.06.2024.
//

import SwiftUI
import Combine

struct WebImageView2: View {
    @ObservedObject var imageLoader2: ImageLoader2
    @State var image: UIImage = UIImage()

    init(url: String) {
        imageLoader2 = ImageLoader2(url: url)
    }

    var body: some View {
        Image(uiImage: image)
            .resizable()
            .aspectRatio(contentMode: .fit)
            .onReceive(imageLoader2.didChange) { image in
                self.image = image
            }
    }
}

class ImageLoader2: ObservableObject {
    @Published var didChange = PassthroughSubject<UIImage, Never>()
    var image = UIImage() {
        didSet {
            didChange.send(image)
        }
    }
    
    init(url: String) {
        guard let url = URL(string: url) else { return }
        URLSession.shared.dataTask(with: url) { (data, response, error) in
            guard let data = data else { return }
            guard let image = UIImage(data: data) else { return }
            DispatchQueue.main.async {
                self.image = image
            }
        }.resume()
    }
}
