//
//  CountryRow.swift
//  COVID-19_SwiftUI
//
//  Created by Tarokh on 8/23/20.
//  Copyright © 2020 Tarokh. All rights reserved.
//

import SwiftUI
import SDWebImageSwiftUI

struct CountryRow: View {
    
    // define some variables
    @State var country: String = ""
    @State var countryImage: String = ""
    @State var cases: Int = 0
    @State var deaths: Int = 0
    @State var recovered: Int = 0
    @State var active: Int = 0
    
    var body: some View {
        VStack {
            HStack {
                VStack(spacing: 1) {
                    Text(self.country).fontWeight(.bold)
                    WebImage(url: URL(string: self.countryImage))
                    .resizable()
                        .aspectRatio(contentMode: .fit)
                    .clipped()
                        .frame(width: 150, height: 150)
                }
                
                Spacer()
                
                VStack(alignment: .center, spacing: 10) {
                    Text("CASES: \(cases)").foregroundColor(.secondary)
                    Text("DEATHS: \(deaths)").foregroundColor(.red)
                    Text("RECOVERED: \(recovered)").foregroundColor(.green)
                    Text("ACTIVE: \(active)").foregroundColor(.black)
                }
                
            }.padding()
            .overlay(
                RoundedRectangle(cornerRadius: 5)
                .stroke(Color(.sRGB, red: 150/255, green: 150/255, blue: 150/255, opacity: 0.2), lineWidth: 1)
                    .shadow(radius: 5.0)
            )
                .padding([.leading, .trailing], -5)
        }
    }
}

struct CountryRow_Previews: PreviewProvider {
    static var previews: some View {
        CountryRow(country: "", countryImage: "", cases: 0, deaths: 0, recovered: 0, active: 0)
    }
}
