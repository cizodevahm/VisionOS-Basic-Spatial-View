//
//  PDFViewerView.swift
//  SocialDemo
//
//  Created by Hitesh Thummar on 13/04/24.
//

import SwiftUI
import WebKit

struct PDFViewerView: View {
    @State var meadiUrl = "https://www.google.com"
    @EnvironmentObject var socialDataModelNavigationModelVar: SocialDataModelNavigationModel

    var body: some View {
        VStack{
            WebView(request: URLRequest(url: URL(string: meadiUrl)!))
        }.task{
            guard let url = socialDataModelNavigationModelVar.socialDataModelVar?.media else {return}
            meadiUrl = url
        }
    }

}
struct WebView: UIViewRepresentable {
    let request: URLRequest

    func makeUIView(context: Context) -> WKWebView {
        let webView = WKWebView()
        return webView
    }

    func updateUIView(_ uiView: WKWebView, context: Context) {
         uiView.load(request)
    }
}

#Preview {
    ContentView()
}
