//
//  ContentView.swift
//  H4X0R
//
//  Created by argenis delarosa on 11/24/19.
//  Copyright © 2019 argenis delarosa. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var networkManager = NetworkManager()
    
    var body: some View {
        NavigationView {
            NavigationLink(destination: , label: <#T##() -> _#>)
            List(networkManager.posts) { post in
                HStack {
                    Text(String(post.points))
                    Text(post.title)
                }
                
            }
        .navigationBarTitle("H4X0R News")
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

//let posts = [
//    Post(id: "1", title: "Helo"),
//    Post(id: "2", title: "Hello"),
//    Post(id: "3", title: "Heloo")
//]
