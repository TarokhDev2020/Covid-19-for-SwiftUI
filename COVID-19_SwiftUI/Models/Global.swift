//
//  Covid.swift
//  COVID-19_SwiftUI
//
//  Created by Tarokh on 8/22/20.
//  Copyright © 2020 Tarokh. All rights reserved.
//

import Foundation

struct Global: Codable, Hashable{
    
    let todayCases: Int
    let todayDeaths: Int
    let todayRecovered: Int
    let affectedCountries: Int
    
}
