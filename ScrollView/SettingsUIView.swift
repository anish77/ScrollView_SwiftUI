//
//  SettingsUIView.swift
//  ScrollView
//
//  Created by Ana Cvasniuc on 09/05/24.
//

import SwiftUI

struct SettingsUIView: View {
    
    let data = Array(1...150)
        
        var columns: [GridItem] = [
            GridItem(.adaptive(minimum: 50)) // adaptive
        ]
   // let columns: [GridItem] = [.init(.fixed(100)), .init(.fixed(100))] //fixed
    
    
    var body: some View {
            ScrollView {
                LazyVGrid(columns: self.columns) {
                    ForEach(data, id: \.self) { number in
                        Button(action: {
                            Text("\(number)")
                                
                        }) {
                            Text("")
                                .frame(width: 50, height: 50)
                                .background(Color.orange)
                                .foregroundColor(Color.black)
                                .cornerRadius(25)
                            
                        }
                    }
                }
            }
            .padding()
        }
}

#Preview {
    SettingsUIView()
}





