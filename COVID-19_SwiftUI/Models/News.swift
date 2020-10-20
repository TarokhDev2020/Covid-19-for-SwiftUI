//
//  News.swift
//  COVID-19_SwiftUI
//
//  Created by Tarokh on 8/22/20.
//  Copyright © 2020 Tarokh. All rights reserved.
//

import Foundation

// MARK: - News
struct News: Codable, Hashable {
    var status: String?
    var totalResults: Int?
    var articles: [Article]?
}

// MARK: - Article
struct Article: Codable, Hashable {
    var source: Source?
    //let author: String?
    var title: String?
    //let articleDescription: String?
    var url: String?
    //var urlToImage: String?
   // let publishedAt: Date
    //let content: String?

    enum CodingKeys: String, CodingKey {
        case source, title
        case url
    }
}

// MARK: - Source
struct Source: Codable, Hashable {
    var id: String?
    var name: String?
}
