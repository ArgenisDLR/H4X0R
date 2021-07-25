//
//  ContentView.swift
//  H4X0R
//
//  Created by argenis delarosa on 11/24/19.
//  Copyright © 2019 argenis delarosa. All rights reserved.
//

import SwiftUI

@available(iOS 14.0, *)
@available(iOS 14.0, *)
struct ContentView: View {
    
    @AppStorage("darkModeEnabled") private var darkModeEnabled = false
    @AppStorage("systemThemeEnabled") private var systemThemeEnabled = false
    
    var body: some View {
        
        TabView {
            
            FeedView()
                
                .tabItem {
                    Image(systemName: "newspaper")
                    Text("News")
                }
            
            SettingsView(darkModeEnabled: $darkModeEnabled, systemThemeEnabled: $systemThemeEnabled)
                
                .tabItem {
                    Image(systemName: "gear")
                    Text("Settings")
                }
        }
    }
}

@available(iOS 14.0, *)
@available(iOS 14.0, *)
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

