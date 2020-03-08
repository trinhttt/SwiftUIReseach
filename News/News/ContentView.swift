//
//  ContentView.swift
//  News
//
//  Created by Trinh Thai on 3/5/20.
//  Copyright © 2020 Trinh Thai. All rights reserved.
//

import SwiftUI
// use api: https://hn.algolia.com/api
struct ContentView: View {
    
    @ObservedObject var networkManager = NetworkManager()
    
    var body: some View {
        NavigationView {
            List(networkManager.posts) { post in
                HStack {
                    Text(String(post.points))
                    Text(post.title)
                }
            }
            .navigationBarTitle("News")
        }
        .onAppear {
            self.networkManager.fetchData()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

