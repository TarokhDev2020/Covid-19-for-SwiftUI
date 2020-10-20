//
//  CountriesViewModel.swift
//  COVID-19_SwiftUI
//
//  Created by Tarokh on 8/23/20.
//  Copyright © 2020 Tarokh. All rights reserved.
//

import Foundation

class CountriesViewModel: ObservableObject {
    
    // define some variables
    @Published var countries = [Country]()
    let countriesService = CountriesService()
    
    // define some functions
    init() {
        loadData()
    }
    
    func loadData() {
        countriesService.getCountries { [weak self] result in
            DispatchQueue.main.async {
                switch result {
                case .failure(let err):
                    print(err.localizedDescription)
                case .success(let countries):
                    self?.countries = countries
                }
            }
        }
    }
    
}
