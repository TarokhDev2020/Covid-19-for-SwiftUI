//
//  ContentView.swift
//  COVID-19_SwiftUI
//
//  Created by Tarokh on 8/22/20.
//  Copyright © 2020 Tarokh. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            GlobalView()
                .tabItem {
                    Image(systemName: "globe")
                    Text("Global")
            }
            
            CountriesView()
                .tabItem {
                    Image(systemName: "flag.fill")
                    Text("Countries")
            }
            
            NewsView()
                .tabItem {
                    Image(systemName: "paperplane.fill")
                    Text("News")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
