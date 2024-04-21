//
//  VideoPlayerView.swift
//  SocialDemo
//
//  Created by Hitesh Thummar on 13/04/24.
//

import SwiftUI
import AVKit


struct VideoPlayerView: View {

    @State var meadiUrl = "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ElephantsDream.mp4"
    @EnvironmentObject var socialDataModelNavigationModelVar: SocialDataModelNavigationModel
    
    var body: some View {
        VStack{
            VideoPlayer(player: AVPlayer(url:  URL(string: meadiUrl)!))
        }.task{
            guard let url = socialDataModelNavigationModelVar.socialDataModelVar?.media else {return}
            meadiUrl = url
        }
    }
}

#Preview {
    VideoPlayerView()
}
