//
//  TransitionView.swift
//  AnimationSanboxA
//
//  Created by Weerawut on 2/1/2569 BE.
//

import SwiftUI

struct TransitionView: View {
    @State private var isShowingRed = false
    
    var body: some View {
        VStack {
            Button("Click Me") {
                withAnimation {
                    isShowingRed.toggle()
                }
            }
            
            if isShowingRed {
                Rectangle()
                    .fill(.red)
                    .frame(width: 200, height: 200)
                    .transition(.asymmetric(insertion: .scale, removal: .opacity))
            }
        }
        .frame(width: 300, height: 300)
    }
}

#Preview {
    TransitionView()
}
