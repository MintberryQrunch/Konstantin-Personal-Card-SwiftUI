//
//  ContentView.swift
//  Konstantin Card
//
//  Created by Konstantin Yadrevskiy on 15.07.2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(red: 0.83, green: 0.33, blue: 0.00)
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                Image("Konstantin")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 150, height: 150)
                    .clipShape(Circle())
                    .overlay(Circle().stroke(Color.white, lineWidth: 5))
                
                Text("Konstantin Yadrevskiy")
                    .font(Font.custom("Pacifico-Regular", size: 35))
                    .bold()
                    .foregroundColor(.white)
                
                Text("iOS Developer")
                    .foregroundColor(.white)
                    .font(.system(size: 25))
                    .bold()
                
                Divider()
                
                InfoView(text: "+7 985 426 97 88", imageName: "phone.fill")
                
                InfoView(text: "constantin.yadrevskiy@yandex.ru", imageName: "envelope.fill")
                
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
