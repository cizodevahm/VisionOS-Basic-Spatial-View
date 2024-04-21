//
//  SocialDemoApp.swift
//  SocialDemo
//
//  Created by Hitesh Thummar on 12/04/24.
//

import SwiftUI

@main
struct SocialDemoApp: App {
    @StateObject var socialDataModelNavigationModelVar = SocialDataModelNavigationModel()
    
    var body: some Scene {        
        WindowGroup {
            ContentView().environmentObject(socialDataModelNavigationModelVar)
        }
        WindowGroup(id: "video") {
            VideoPlayerView().environmentObject(socialDataModelNavigationModelVar)
        }
        WindowGroup(id: "image") {
            SwiftUIImageViewer().environmentObject(socialDataModelNavigationModelVar)
        }
        
        WindowGroup(id: "pdf") {
            PDFViewerView().environmentObject(socialDataModelNavigationModelVar)
        }
        
        
        
    }
}
