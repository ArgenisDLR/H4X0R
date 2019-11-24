//
//  ContentView.swift
//  H4X0R
//
//  Created by argenis delarosa on 11/24/19.
//  Copyright © 2019 argenis delarosa. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            List(posts) { post in
                Text(post.title)
            }
        .navigationBarTitle("H4X0R News")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct Post: Identifiable {
    let id: String
    let title: String
}

let posts = [
    Post(id: "1", title: "Helo"),
    Post(id: "2", title: "Hello"),
    Post(id: "3", title: "Heloo")
]
