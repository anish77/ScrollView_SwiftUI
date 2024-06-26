//
//  ContentView.swift
//  ScrollView
//
//  Created by Ana Cvasniuc on 06/05/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ScrollView(.horizontal) {
            HStack {
                ForEach(MockData.items) {
                    
                    item in

                    Circle()
                        .containerRelativeFrame(.horizontal, count: 1, spacing: 16.0)
                        .foregroundStyle(item.color.gradient)
                        .scrollTransition{ content, phase in content
                                .opacity(phase.isIdentity ? 1.0 : 0.0)
                                .scaleEffect(x: phase.isIdentity ? 1.0 : 0.8,
                                             y: phase.isIdentity ? 1.0 : 0.8)
                                .offset(y: phase.isIdentity ? 0 : 50)
                        }
                }
            }
            .scrollTargetLayout()
            
        }
        .contentMargins(16, for: .scrollContent)
        .scrollTargetBehavior(.viewAligned)
    }
}

#Preview {
    ContentView()
}


struct Item: Identifiable{
    let id = UUID()
    let color: Color
}

struct MockData{
    static var items = [Item(color: .blue),
                        Item(color: .cyan),
                        Item(color: .gray),
                        Item(color: .green),
                        Item(color: .indigo)]
}
