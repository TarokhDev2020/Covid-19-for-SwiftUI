//
//  NewsRow.swift
//  COVID-19_SwiftUI
//
//  Created by Tarokh on 8/22/20.
//  Copyright © 2020 Tarokh. All rights reserved.
//

import SwiftUI
import SDWebImageSwiftUI

struct NewsRow: View {
    
    // define some variables
    @State var newsTitle: String
    @State var newsSource: String
    
    var body: some View {
        HStack {
            VStack(alignment: .leading, spacing: 5) {
                Text(newsTitle)
                    .font(.headline)
                Text(newsSource)
                    .font(.footnote)
                    .foregroundColor(.secondary)
            }
            Spacer()
        }.padding()
    }
}

struct NewsRow_Previews: PreviewProvider {
    static var previews: some View {
        NewsRow(newsTitle: "", newsSource: "")
    }
}
