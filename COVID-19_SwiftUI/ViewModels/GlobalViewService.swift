//
//  CovidViewModel.swift
//  COVID-19_SwiftUI
//
//  Created by Tarokh on 8/22/20.
//  Copyright © 2020 Tarokh. All rights reserved.
//

import Foundation

class GlobalViewService: ObservableObject {
    
    // define some variables
    @Published var covids = [Global]()
    @Published var isLoading = false
    let globalService = GlobalService()
    
    init() {
        loadData()
    }
    
    func loadData() {
        isLoading = true
        globalService.getCovidInfo { [weak self] result in
            DispatchQueue.main.async {
                self?.isLoading = false
                switch result {
                case .failure(let error):
                    print(error.localizedDescription)
                case .success(let covids):
                    self?.covids = covids
                }
            }
        }
    }
    
    func getDate() -> String {
        let date = Date()
        let formatter = DateFormatter()
        formatter.dateFormat = "dd.MM.yyyy"
        return formatter.string(from: date)
    }
    
}
