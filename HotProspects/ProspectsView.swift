//
//  ProspectsView.swift
//  HotProspects
//
//  Created by KazukiNakano on 2020/08/01.
//  Copyright © 2020 dmb. All rights reserved.
//

import SwiftUI

struct ProspectsView: View {
    
    let filter: FilterType
    var title: String {
        switch filter {
        case .none:
            return "Everyone"
        case .contacted:
            return "Contacted people"
        case .uncontacted:
            return "Uncontacted people"
        }
    }
    
    @EnvironmentObject var prospects: Prospects
    var filteredProspects: [Prospect] {
        switch filter {
        case .none:
            return prospects.people
        case .contacted:
            return prospects.people.filter { $0.isContacted }
        case .uncontacted:
            return prospects.people.filter { !$0.isContacted }
        }
    }
    
    enum FilterType {
        case none, contacted, uncontacted
    }
    
    var body: some View {
        NavigationView {
            List {
                ForEach(filteredProspects) { prospect in
                    VStack(alignment: .leading) {
                        Text(prospect.name)
                            .font(.headline)
                        Text(prospect.emailAddress)
                            .foregroundColor(.secondary)
                    }
                }
            }
            .navigationBarTitle(title)
            .navigationBarItems(trailing: Button(action: {
                let prospect = Prospect()
                prospect.name = "Paul Hudson"
                prospect.emailAddress = "paul@hackingwithswift.com"
                self.prospects.people.append(prospect)
            }) {
                Image(systemName: "qrcode.viewfinder")
                Text("Scan")
            })
        }
    }
}

struct ProspectsView_Previews: PreviewProvider {
    static var previews: some View {
        ProspectsView(filter: .none)
    }
}