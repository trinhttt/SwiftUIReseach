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
    var body: some View {
        NavigationView {
            List(posts) { post in
                Text(post.title)
            }
            .navigationBarTitle("News")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

// Use Identifiable need to declare id property
//struct Post: Identifiable {
//    var id: String
//    var title: String
//}
//
let posts = [
    Post(id: "1", title: "a"),
    Post(id: "2", title: "b"),
    Post(id: "3", title: "c")
]
