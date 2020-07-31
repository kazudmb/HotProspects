//
//  Prospect.swift
//  HotProspects
//
//  Created by KazukiNakano on 2020/08/01.
//  Copyright © 2020 dmb. All rights reserved.
//

import SwiftUI

class Prospect: Identifiable, Codable {
    let id = UUID()
    var name = "Anonymous"
    var emailAddress = ""
    var isContacted = false
}

class Prospects: ObservableObject {
    @Published var people: [Prospect]

    init() {
        self.people = []
    }
}
