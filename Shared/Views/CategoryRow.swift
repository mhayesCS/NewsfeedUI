//
//  CategoryRow.swift
//  NewsfeedUI
//
//  Created by Kail Hayes on 3/12/24.
//

import SwiftUI

struct CategoryRow: View {
    var categoryName: String
    var articles: [NewsArticle]
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(categoryName)
                .font(.title)
                .padding(.leading, 15)
                .padding(.top, 5)
            
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(alignment: .top, spacing: 0) {
                    ForEach(articles) { article in
                        NavigationLink(destination: DetailView(article: article)) {
                            CategoryItem(article: article)
                        }.buttonStyle(.plain)
                        
                    }
                    
                }
                
            }
            
        }
        
    }
    
}

struct CategoryRow_Previews: PreviewProvider {
    static var previews: some View {
        CategoryRow(categoryName: "Sports", articles: NewsFeed.sampleData)
    }
}
