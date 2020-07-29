//
//  ContentView.swift
//  HotProspects
//
//  Created by KazukiNakano on 2020/07/29.
//  Copyright © 2020 dmb. All rights reserved.
//

import SwiftUI

//class User: ObservableObject {
//    @Published var name = "Taylor Swift"
//}
//
//struct EditView: View {
//    @EnvironmentObject var user: User
//
//    var body: some View {
//        TextField("Name", text: $user.name)
//    }
//}
//
//struct DisplayView: View {
//    @EnvironmentObject var user: User
//
//    var body: some View {
//        Text(user.name)
//    }
//}
//
//struct ContentView: View {
//    let user = User()
//
//    var body: some View {
//        VStack {
//            EditView()
//            DisplayView()
//        }
//        .environmentObject(user)
//    }
//}

struct ContentView: View {
    @State private var selectedTab = 0
    
    var body: some View {
        TabView(selection: $selectedTab) {
            Text("Tab 1")
                .onTapGesture {
                    self.selectedTab = 1
            }
            .tabItem {
                Image(systemName: "star")
                Text("One")
            }
            .tag(0)
            
            Text("Tab 2")
                .tabItem {
                    Image(systemName: "star.fill")
                    Text("Two")
            }
            .tag(1)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
