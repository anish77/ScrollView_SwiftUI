//
//  searchBar.swift
//  ScrollView
//
//  Created by Ana Cvasniuc on 26/06/24.
//

import SwiftUI

struct searchBar: View {
    @State var state = false
    @Namespace var namespace
    var body: some View {
        if !state{
            ZStack{
                RoundedRectangle(cornerRadius: 30, style: .continuous)
                    .matchedGeometryEffect(id: /*@START_MENU_TOKEN@*/"ID"/*@END_MENU_TOKEN@*/, in: namespace)
                    .frame(width: 50, height: 50)
                Image(systemName: "magnifyingglass").bold()
                    .font(.title2)
                    .matchedGeometryEffect(id:"icon", in: namespace)
                    .foregroundColor(.black)
            }
            .foregroundColor(.white)
            .shadow(color: .black.opacity(0.1), radius: 10, x: 0, y: 0)
            .onTapGesture {
                withAnimation(.interactiveSpring(response: 0.9, dampingFraction: 0.9)){
                    state.toggle()
                }
            }
        }else{
           
                RoundedRectangle(cornerRadius: 30, style: .continuous)
                    .matchedGeometryEffect(id: /*@START_MENU_TOKEN@*/"ID"/*@END_MENU_TOKEN@*/, in: namespace)
                    .frame(maxWidth: .infinity)
                    .frame(height: 50)
                    .overlay(alignment: .leading){
                        Image(systemName: "magnifyingglass").bold()
                            .font(.title2)
                            .matchedGeometryEffect(id:"icon", in: namespace)
                            .foregroundColor(.black)
                            .padding(.leading, 10)
                    }
                
            
            .foregroundColor(.white)
            .shadow(color: .black.opacity(0.1), radius: 10, x: 0, y: 0)
            .onTapGesture {
                withAnimation(.interactiveSpring(response: 0.9, dampingFraction: 0.9)){
                    state.toggle()
                }
            }
        }
    }
}

#Preview {
    searchBar()
}
