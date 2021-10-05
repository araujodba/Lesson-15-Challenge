//
//  VideoDetailsView.swift
//  Lesson 15
//
//  Created by Marcello Lima on 05/10/21.
//

import SwiftUI
import AVKit

struct VideoDetailsView: View {
    
    @EnvironmentObject var model: VideoModel
    
    var body: some View {
        
        
        GeometryReader { geo in
            VStack (alignment: .leading) {
                
                Text(model.videos[model.currentIndexVideo ?? 0].title)
                    .font(.largeTitle)
                    .bold()
                    .padding([.leading])
                
                VideoPlayer(player: AVPlayer(url:  URL(string: model.videos[model.currentIndexVideo ?? 0].url)!))
                    .frame(width: geo.size.width, height: 250, alignment: .center)
            }
        }
    }
    init() {
        
    }
}

struct VideoDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        VideoDetailsView().environmentObject(VideoModel())
    }
}
