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
    
    var body: some View {
        
        NavigationView {
                VStack (alignment: .leading) {
                    Divider()
                    
                    ZStack {
                        RoundedRectangle(cornerRadius: 5, style: .continuous)
                            .fill(Color.gray
                                    .opacity(0.2))
                            .background(Color.white)
                            .frame(height: 32, alignment: .leading).padding(.horizontal, 20)
                        HStack {
                            Image(systemName: "magnifyingglass")
                            TextField("Search movie", text: $movieName)
                                .multilineTextAlignment(.leading)
                        }
                        .padding(.horizontal, 30)
                    }
                    

                    NavigationLink {
                        VideoDetailsView()
                    } label: {
                        List(0..<6) { item in
                                HStack {
                                    Text("How To Make An App for Beginners 2021 / SwiftUI - Lesson 1")
                                        .multilineTextAlignment(.leading)
                                    Spacer()
                                    Image(systemName: "chevron.forward")
                                }
                            }
                            .listStyle(.inset)
                            .accentColor(.black)
                        
                    }.padding(.horizontal, -10)
                        .padding(.trailing, 5)
                    
                    
                    
                    
                    
                    Spacer()
                }
                .navigationTitle("All Videos")
            }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
