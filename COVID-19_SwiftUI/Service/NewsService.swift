//
//  NewsService.swift
//  COVID-19_SwiftUI
//
//  Created by Tarokh on 8/22/20.
//  Copyright © 2020 Tarokh. All rights reserved.
//

import Foundation

class NewsService {
    
    // define some functions
    func getNews(_ completion: @escaping(Result<News, Error>) -> ()) {
        let url = URL(string: Routes.route.news)
        URLSession.shared.dataTask(with: url!) { (data, response, err) in
            if let error = err {
                completion(.failure(error))
            }
            guard let newsData = data else {
                return completion(.failure(NSError(domain: "", code: -1, userInfo: nil)))
            }
            do {
                let response = try JSONDecoder().decode(News.self, from: newsData)
                //print(response)
                completion(.success(response))
            }
            catch let error as NSError {
                completion(.failure(error))
            }
        }.resume()
    }
    
}
