//
//  CountriesView.swift
//  COVID-19_SwiftUI
//
//  Created by Tarokh on 8/22/20.
//  Copyright © 2020 Tarokh. All rights reserved.
//

import SwiftUI

struct CountriesView: View {
    
    // define some variables
    @ObservedObject var countriesViewModel = CountriesViewModel()
    @State var text: String = ""
    
    init() {
        UITableView.appearance().separatorStyle = .none
        //UITableView.appearance().tableFooterView = UIView()
    }
    
    var body: some View {
        NavigationView {
            VStack {
                SearchBar(text: self.$text)
                List {
                    ForEach(self.countriesViewModel.countries.filter {
                        self.text.isEmpty ? true : (($0.country?.lowercased().contains(self.text.lowercased()))!)
                    }, id: \.self) { countryItems in
                        CountryRow(country: countryItems.country!, countryImage: countryItems.countryInfo.flag!, cases: countryItems.cases!, deaths: countryItems.deaths!, recovered: countryItems.recovered!, active: countryItems.active!)
                    }
                }
            }.navigationBarTitle("Countries Covid-19")
                .onAppear {
                    UITableView.appearance().separatorStyle = .none
            }
        }
    }
}

struct CountriesView_Previews: PreviewProvider {
    static var previews: some View {
        CountriesView()
    }
}
