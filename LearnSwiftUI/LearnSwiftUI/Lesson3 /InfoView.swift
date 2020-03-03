//
//  InfoView.swift
//  LearnSwiftUI
//
//  Created by TrinhThai on 3/3/20.
//  Copyright © 2020 TrinhThai. All rights reserved.
//

import SwiftUI

struct InfoView: View {
    let text: String
    let imageName: String
    var body: some View {
        RoundedRectangle(cornerRadius: 20)
            .frame(height: 50)
            .foregroundColor(.white)
            .overlay(HStack {
                Image(systemName: imageName)
                    .foregroundColor(.black)
                Text(text)
            })
            .padding(.all)
    }
}

struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView(text: "Trinh", imageName: "phone.fill")
//            .previewLayout(.sizeThatFits)
    }
}
