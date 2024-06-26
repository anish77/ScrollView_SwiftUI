//
//  SettingsView.swift
//  ScrollView
//
//  Created by Ana Cvasniuc on 08/05/24.
//

import SwiftUI

struct TabViewApp: View {
    var body: some View {
        TabView {
            ContentView()
                .tabItem {
                    Label("Settings", systemImage: "settings")
                }
            ContentView()
                .tabItem {
                    Label("Menu", systemImage: "menu")
                }
        }
    }
}


#Preview {
    TabViewApp()
}
