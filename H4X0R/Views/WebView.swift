//
//  WebView.swift
//  H4X0R
//
//  Created by Argenis De La Rosa on 6/21/20.
//  Copyright © 2020 argenis delarosa. All rights reserved.
//

import Foundation
import SwiftUI
import WebKit

struct WebView: UIViewRepresentable {
    
    let urlString: String?
    
    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        
        if let safeString = urlString {
            
            if let url = URL(string: safeString) {
                
                let request = URLRequest(url: url)
                uiView.load(request)
            }
        }
    }

}
