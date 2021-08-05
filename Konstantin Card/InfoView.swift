//
//  InfoView.swift
//  Konstantin Card
//
//  Created by Konstantin Yadrevskiy on 16.07.2021.
//

import SwiftUI

struct InfoView: View {
    let text: String
    let imageName: String
    
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .fill(Color.white)
            .frame(height: 50, alignment: .center)
            .overlay(
                HStack{
                    Image(systemName: imageName)
                        .foregroundColor(.green)
                    Text(text)
                })
            .padding()
    }
}

struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView(text: "+7 985 426 97 88", imageName: "phone.fill")
            .previewLayout(.sizeThatFits)
    }
}
