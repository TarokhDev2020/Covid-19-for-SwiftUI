//
//  NewsViews.swift
//  COVID-19_SwiftUI
//
//  Created by Tarokh on 8/22/20.
//  Copyright © 2020 Tarokh. All rights reserved.
//

import SwiftUI

struct NewsView: View {
    
    // define some variables
    @ObservedObject var newsViewModel = NewsViewModel()
    
    init() {
        UITableView.appearance().separatorStyle = .singleLine
    }
    
    var body: some View {
        NavigationView {
            VStack {
                List {
                    ForEach(newsViewModel.news, id: \.self) {newsItems in
                        ForEach(newsItems.articles!, id: \.self) {articleItems in
                            NavigationLink(destination: EmptyView()) {
                                NewsRow(newsTitle: articleItems.title!, newsSource: (articleItems.source?.name!)!).onTapGesture {
                                    UIApplication.shared.open(URL(string: articleItems.url!)!, options: [:], completionHandler: nil)
                                }
                            }
                        }
                    }
                }
            }
            .navigationBarTitle("Covid-19 News", displayMode: .automatic)
            .onAppear {
                UITableView.appearance().separatorStyle = .singleLine
            }
        }
    }
}

struct NewsViews_Previews: PreviewProvider {
    static var previews: some View {
        NewsView()
    }
}
