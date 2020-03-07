//
//  ContentView.swift
//  LearnSwiftUI
//
//  Created by TrinhThai on 3/3/20.
//  Copyright © 2020 TrinhThai. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(red: 0.09, green: 0.63, blue: 1).edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            VStack {
                Image("image")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 200, height: 200)
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                    .overlay(Circle().stroke(Color.white, lineWidth: 20))
                
                Text("Trinhzz")
                    .font(Font.custom("TradeWinds-Regular", size: 40))
                    .bold()
                    .foregroundColor(.white)
                Text("IOS dev")
                    .foregroundColor(.white)
                Divider()
                InfoView(text: "+84292929292", imageName: "phone.fill")
                InfoView(text: "ttttrinh@gmail.com", imageName: "envelope.fill")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


