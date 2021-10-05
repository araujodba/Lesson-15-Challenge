//
//  Lesson_15App.swift
//  Lesson 15
//
//  Created by Marcello Lima on 04/10/21.
//

import SwiftUI

@main
struct Lesson_15App: App {
    var body: some Scene {
        WindowGroup {
            ContentView().environmentObject(VideoModel())
        }
    }
}
