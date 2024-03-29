//
//  ContentView.swift
//  Shared
//
//  Created by Kail Hayes on 3/12/24.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var newsFeed = NewsFeed()
    
    
    var body: some View {
        NavigationView {
            List {
                if !newsFeed.general.isEmpty {
                    CarouselView(articles: Array(newsFeed.general.prefix(5)))
                        .listRowInsets(EdgeInsets())
                    
                }
                
                if !newsFeed.sports.isEmpty {
                    CategoryRow(categoryName: "Sports", articles: newsFeed.sports)
                        .listRowInsets(EdgeInsets())
                }
                
                if !newsFeed.sports.isEmpty {
                    CategoryRow(categoryName: "Health", articles: newsFeed.health)
                        .listRowInsets(EdgeInsets())
                }
                
                if !newsFeed.sports.isEmpty {
                    CategoryRow(categoryName: "Entertainment", articles: newsFeed.entertainment)
                        .listRowInsets(EdgeInsets())
                }
            }
            .listStyle(.plain)
            .navigationTitle("Newsfeed")
        }
        
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
