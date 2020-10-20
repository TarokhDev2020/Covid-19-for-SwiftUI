//
//  Country.swift
//  COVID-19_SwiftUI
//
//  Created by Tarokh on 8/23/20.
//  Copyright © 2020 Tarokh. All rights reserved.
//

import Foundation

struct Country: Codable, Hashable {
    var country: String?
    var cases, todayCases, deaths, todayDeaths: Int?
    var recovered, todayRecovered, active, critical: Int?
    var countryInfo: CountryInfo
}

// MARK: - CountryInfo
struct CountryInfo: Codable, Hashable {
    var _id: Int?
    var iso2, iso3: String?
    var lat, long: Double?
    var flag: String?

    enum CodingKeys: String, CodingKey {
        case _id = "_id"
        case iso2, iso3, lat, long, flag
    }
}

