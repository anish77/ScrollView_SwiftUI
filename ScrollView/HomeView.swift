//
//  HomeView.swift
//  ScrollView
//
//  Created by Ana Cvasniuc on 10/07/24.
//

import SwiftUI

struct HomeView: View {
    @State var show = false
    var body: some View {
        ZStack{
            ScrollView{
                HStack{
                    SearchBar()
                    
                }
                .padding(.horizontal)
            }
        }
    }
}

#Preview {
    HomeView()
}
