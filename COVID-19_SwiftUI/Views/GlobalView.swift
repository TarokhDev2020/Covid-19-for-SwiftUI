//
//  GlobalView.swift
//  COVID-19_SwiftUI
//
//  Created by Tarokh on 8/22/20.
//  Copyright © 2020 Tarokh. All rights reserved.
//

import SwiftUI

struct GlobalView: View {
    
    // define some variables
    @State var cases: String?
    @State var deaths: String?
    @State var recovered: String?
    @State var affected: String?
    @ObservedObject var covidViewModel = GlobalViewService()
    
    var body: some View {
        VStack {
            ForEach(covidViewModel.covids, id: \.self) {covidInformation in
                VStack(spacing: 5) {
                    Text("Coronavirus Covid-19 Global Cases")
                        .font(.headline)
                    Text("Last Updated at:")
                        .font(.body)
                        .foregroundColor(.secondary)
                    
                    Text("\(self.covidViewModel.getDate())")
                        .font(.headline)
                    Spacer()
                    VStack(spacing: 10) {
                        Text("Coronavirus Cases:")
                        Text("\(covidInformation.todayCases)")
                            .foregroundColor(.secondary)
                        Text("Deaths:")
                        Text("\(covidInformation.todayDeaths)")
                            .foregroundColor(.red)
                        Text("Recovered:")
                        Text("\(covidInformation.todayRecovered)")
                            .foregroundColor(.green)
                        Text("Affected Countries:")
                        Text("\(covidInformation.affectedCountries)")
                            .foregroundColor(.accentColor)
                    }.font(.title)
                    Spacer()
                }
            }
        }
    }
}


struct GlobalView_Previews: PreviewProvider {
    static var previews: some View {
        GlobalView(cases: "", deaths: "", recovered: "", affected: "")
    }
}
