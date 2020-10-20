//
//  Network.swift
//  COVID-19_SwiftUI
//
//  Created by Tarokh on 8/22/20.
//  Copyright © 2020 Tarokh. All rights reserved.
//

import Foundation

class GlobalSetting {
    static let shared = GlobalSetting()
    let apiKey = "efd0b4278f4944e9a1781ed64d35f56e"
}

class Routes {
    
    static let route = Routes()
    static let global = GlobalSetting.shared
    let all = "https://disease.sh/v3/covid-19/all"
    let countries = "https://disease.sh/v3/covid-19/countries"
    let news = "https://newsapi.org/v2/top-headlines?country=us&apiKey=\(global.apiKey)&category=health"
    
}
