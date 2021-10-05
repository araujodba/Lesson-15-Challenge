//
//  VideoModel.swift
//  Lesson 15
//
//  Created by Marcello Lima on 05/10/21.
//

import Foundation

class VideoModel: ObservableObject {
    
    @Published var videos: [Video] = [Video]()
    @Published var currentIndexVideo: Int?
    
    init() {
        videos = LoadData().loadData()
    }

}

