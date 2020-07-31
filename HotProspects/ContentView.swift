//
//  ContentView.swift
//  HotProspects
//
//  Created by KazukiNakano on 2020/07/29.
//  Copyright © 2020 dmb. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    var prospects = Prospects()

    var body: some View {
        TabView {
            ProspectsView(filter: ProspectsView.FilterType.none)
                .tabItem {
                    Image(systemName: "person.3")
                    Text("Everyone")
                }
            ProspectsView(filter: ProspectsView.FilterType.contacted)
                .tabItem {
                    Image(systemName: "checkmark.circle")
                    Text("Contacted")
                }
            ProspectsView(filter: ProspectsView.FilterType.uncontacted)
                .tabItem {
                    Image(systemName: "questionmark.diamond")
                    Text("Uncontacted")
                }
            MeView()
                .tabItem {
                    Image(systemName: "person.crop.square")
                    Text("Me")
                }
        }
        .environmentObject(prospects)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
