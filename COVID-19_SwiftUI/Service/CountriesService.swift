//
//  CountryService.swift
//  COVID-19_SwiftUI
//
//  Created by Tarokh on 8/23/20.
//  Copyright © 2020 Tarokh. All rights reserved.
//

import Foundation


class CountriesService {
    
    // define some functions
    func getCountries(completion: @escaping(Result<[Country], Error>) -> ()) {
        let url = URL(string: Routes.route.countries)
        URLSession.shared.dataTask(with: url!) { (data, response, err) in
            if let error = err {
                completion(.failure(error))
            }
            
            guard let countryData = data else {
                return completion(.failure(NSError(domain: "", code: -1, userInfo: nil)))
            }
            do {
                let response = try JSONDecoder().decode([Country].self, from: countryData)
                print(response)
                completion(.success(response))
            }
            catch let error as NSError {
                completion(.failure(error))
            }
        }.resume()
    }
    
}
