//
//  Dicee.swift
//  LearnSwiftUI
//
//  Created by TrinhThai on 3/3/20.
//  Copyright © 2020 TrinhThai. All rights reserved.
//

import SwiftUI

struct Dicee: View {
    var body: some View {
        ZStack {
            Image("newbackground")
                .resizable()
                .edgesIgnoringSafeArea(.all)
            VStack {
                Image("diceeLogo")
                Spacer()
                HStack {
                    DiceView(n: 1)
                    DiceView(n: 1)
                }
                .padding(.horizontal)
                Spacer()
                Button(action: {
                    
                }) {
                    Text("Roll")
                        .font(.system(size: 50))
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .padding(.horizontal)
                }
                .background(Color.red)
            }
        }
    }
}

struct DiceView: View {
    let n: Int
    var body: some View {
        Image("dice\(n)")
            .resizable()
            .aspectRatio(1, contentMode: .fit)
            .padding()
    }
}

struct Dicee_Previews: PreviewProvider {
    static var previews: some View {
        Dicee()
    }
}
