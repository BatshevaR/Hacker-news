//
//  WebView.swift
//  Hacker news
//
//  Created by ophir hartom on 21/12/2021.
//

import Foundation
import SwiftUI
import WebKit

struct WebView : UIViewRepresentable {
    
    let request: String?
    
    func makeUIView(context: Context) -> WKWebView  {
        return WKWebView()
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        if let safeString = request{
            if let url = URL(string: safeString){
                uiView.load(URLRequest(url: url))
            }
        }
    }
    
}
