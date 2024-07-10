//
//  CircleAnimation.swift
//  ScrollView
//
//  Created by Ana Cvasniuc on 24/06/24.
//

import SwiftUI

struct CircleAnimation: View {
    //@Binding var circleA: CGFloat
    @State var circleA = 0.5
    var body: some View {
        VStack{
            Button {
                withAnimation(.easeInOut(duration: 2.0)) {
                    circleA = circleA == 0.0 ? 0.5 : 0.0
                }
            } label: {
                ZStack{
                    Circle()
                        .trim(from: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, to: circleA)
                        .stroke(lineWidth: 4)
                        .frame(width: 40, height: 40)
                        .rotationEffect(.degrees(-90))
                    Circle()
                        .frame(width: 4, height: 4)
                        .offset(y: -20)
                }
            }
            Button {
                withAnimation(.easeInOut(duration: 2.0)) {
                    circleA = circleA == 0.0 ? 0.5 : 0.0
                }
            } label: {
                ZStack{
                    Circle()
                        .trim(from: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, to: circleA)
                        .stroke(lineWidth: 4)
                        .frame(width: 40, height: 40)
                        .rotationEffect(.degrees(90))
                    Circle()
                        .frame(width: 4, height: 4)
                        .offset(y: 20)
                }
            }
            .offset(y: -48)
        }
        .foregroundStyle(.black)
    }
}

struct CircleAnimation_Preview: PreviewProvider {
    static var previews: some View {
        //CircleAnimation(circleA: .constant(0.5))
        CircleAnimation()
    }
}
