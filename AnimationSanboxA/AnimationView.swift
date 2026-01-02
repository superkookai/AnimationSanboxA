//
//  ContentView.swift
//  AnimationSanboxA
//
//  Created by Weerawut on 2/1/2569 BE.
//

import SwiftUI

struct AnimationView: View {
    @State private var animationAmount = 0.0
    @State private var enable = false
    
    var body: some View {
        VStack {
            Text("Click Me!")
                .frame(width: 200, height: 200)
                .foregroundStyle(.white)
                .background(enable ? Color.blue : Color.red)
                .animation(nil, value: enable)
                .clipShape(.rect(cornerRadius: enable ? 60 : 0))
                .animation(.interpolatingSpring(stiffness: 10, damping: 1), value: enable)
                .padding(100)
                .contentShape(.rect)
                .onTapGesture {
                    enable.toggle()
                }
        }
    }
}

#Preview {
    AnimationView()
}
