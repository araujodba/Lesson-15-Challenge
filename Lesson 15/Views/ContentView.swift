//
//  ContentView.swift
//  Lesson 15
//
//  Created by Marcello Lima on 04/10/21.
//

import SwiftUI

struct ContentView: View {
    
    @State private var movieName: String = ""
    @EnvironmentObject var model: VideoModel
    @State private var isSearching: Bool = false
    
    
    var body: some View {
        
        NavigationView {
                VStack (alignment: .leading) {
                    Divider()
                    // MARK: Search TextField.
                    HStack {
                        ZStack {
                            RoundedRectangle(cornerRadius: 5, style: .continuous)
                                .fill(Color.gray
                                        .opacity(0.2))
                                .background(Color.white)
                                .frame(height: 32, alignment: .leading)
                                    .padding(.leading, 20)
                                    .padding(.trailing, 16)
                            HStack {
                                Image(systemName: "magnifyingglass")
                                TextField("Search movie", text: $movieName)
                                    .multilineTextAlignment(.leading)
                                    .onTapGesture {
                                        isSearching = true
                                    }
                                    
                                    
                                    
                            }
                            .padding(.horizontal, 24)
                        }
                        if isSearching {
                            Button {
                                movieName = ""
                                isSearching = false
                            } label: {
                                Text("Cancel")
                            }.padding(.trailing, 24)
                        }
                    }
                    
                    

                
                        
                    List (model.videos) { video in

                            if video.title.lowercased().contains(movieName.lowercased()) || movieName == "" {
                                NavigationLink(
                                    destination: VideoDetailsView(),
                                    tag:model.videos.firstIndex(where: {$0.id == video.id}) ?? 0,
                                    selection: $model.currentIndexVideo,
                                    label: {
                                    HStack {
                                        Text(video.title)
                                            .multilineTextAlignment(.leading)
                                    }
                                })
                            }
                    }
                            .listStyle(.inset)
                            .accentColor(.black)
                            .padding(.horizontal, -10)
                            .padding(.trailing, 5)
    
                    
                    
                    
                    
                    
                    Spacer()
                }
                .navigationTitle("All Videos")
            }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environmentObject(VideoModel())
    }
}
