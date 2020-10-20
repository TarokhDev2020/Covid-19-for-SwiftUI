//
//  NewsViewModel.swift
//  COVID-19_SwiftUI
//
//  Created by Tarokh on 8/22/20.
//  Copyright © 2020 Tarokh. All rights reserved.
//

import Foundation

class NewsViewModel: ObservableObject {
    
    // define some variables
    @Published var news = [News]()
    let newsService = NewsService()
    
    // define some functions
    init() {
        loadData()
    }
    
    func loadData() {
        newsService.getNews { [weak self] result in
            DispatchQueue.main.async {
                switch result {
                case .failure(let error):
                    print(error.localizedDescription)
                case .success(let articles):
                    self?.news = ([articles])
                }
            }
        }
    }
    
}
