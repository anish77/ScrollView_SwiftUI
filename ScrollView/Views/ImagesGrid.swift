//
//  ImagesGrid.swift
//  ScrollView
//
//  Created by Ana Cvasniuc on 10/07/24.
//

import SwiftUI

struct ImagesGrid: View {
//@ObservedObject var imageSelection = ImageSelection()
    var columns:[GridItem] = [GridItem(.flexible())]
    var body: some View {
        HStack{
            LazyVGrid(columns: columns){
                ForEach(/*@START_MENU_TOKEN@*/0 ..< 5/*@END_MENU_TOKEN@*/) { item in
                    Button{
                        
                    } label: {
                        Image("")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 180, height: <#T##CGFloat?#>)
                            .cornerRadius(20)
                }
                }
            }
        }
    }
}

#Preview {
    ImagesGrid()
}
