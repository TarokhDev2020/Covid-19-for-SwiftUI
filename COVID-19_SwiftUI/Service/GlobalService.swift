//
//  CovidService.swift
//  COVID-19_SwiftUI
//
//  Created by Tarokh on 8/22/20.
//  Copyright © 2020 Tarokh. All rights reserved.
//

import Foundation

class GlobalService {
    
    // define some functions
    func getCovidInfo(_ completion: @escaping (Result<[Global], Error>) -> ()) {
        let url = URL(string: Routes.route.all)
        URLSession.shared.dataTask(with: url!) { (data, response, err) in
            if let error = err {
                return completion(.failure(error))
            }
            guard let data = data else {
                return completion(.failure(NSError(domain: "", code: -1, userInfo: nil)))
            }
            
            do {
                let response = try JSONDecoder().decode(Global.self, from: data)
                completion(.success([response]))
            }
            catch let error as NSError {
                completion(.failure(error))
            }
        }
        .resume()
    }
    
}
