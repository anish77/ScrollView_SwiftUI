//
//  TabUIView.swift
//  ScrollView
//
//  Created by Ana Cvasniuc on 09/05/24.
//

import SwiftUI

struct TabViewApp: View {
    var body: some View {
        TabView {
            ContentView()
                .tabItem {
                    Image(systemName: "house")
                    Text("Home")
                }
            ContentView()
                .tabItem {
                    Image("menu")
                }
            SettingsUIView()
                .tabItem {
                    Image("settings")
                }
            
        }
    }
}


#Preview {
    TabViewApp()
}
