//
//  DetailView.swift
//  Hacker news
//
//  Created by ophir hartom on 21/12/2021.
//

import SwiftUI
import WebKit

struct DetailView: View {
    
    let url: String?
    
    var body: some View {
        WebView(request: url)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
            WebView(request: "https://www.apple.com")
        }
}
